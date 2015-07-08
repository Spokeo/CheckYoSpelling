module SpellChecker
  module USA
    class SpellChecker
      # Use the Levenshtein gem to find the closest match
      # NOTE: the gem treats replacement edits as a distance of 2
      MIN_DISTANCE = 4
      class << self
        # Find the closest existing city in the state
        def check_city city, state
          full_state = Geolookup::USA::State.abbreviation_to_name state
          return nil if full_state.nil?
          @@city_arrays ||= Hash.new
          filename = "#{full_state.downcase.gsub(" ", "_")}_cities.yml"
          @@city_arrays[filename] ||= words(filename)
          check city, @@city_arrays[filename]
        end

        # Find the closest existing state
        def check_state state
          @@states ||= words("states.yml")
          check state, @@states
        end

      private
        def check word, nwords
          word.downcase!
          best_match = nil # return nil if no match
          current_distance = MIN_DISTANCE # only accept possible matches that are close enough
          nwords.each do |proposed|
            distance = Levenshtein.distance word, proposed.downcase
            if distance < current_distance
              best_match = proposed
              current_distance = distance
            end
            break if distance == 0 # Found perfect match
          end
          best_match = titleize(best_match) if best_match
          best_match
        end

        def words filename
          YAML.load_file(File.join(File.dirname(__FILE__), "/../../../data/", filename))
        end

        # Basic titleize functionality ex: rhode island => Rhode Island
        def titleize string
          string.gsub(/\w+/) do |word|
            word.capitalize
          end
        end
      end
    end
  end
end
