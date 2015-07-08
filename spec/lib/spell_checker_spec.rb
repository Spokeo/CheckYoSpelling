describe "SpellCheckUSA::SpellChecker" do
  it "should correct city names" do
    city = SpellCheckerUSA::SpellChecker.correct_city "Los Angelos", "CA"
    expect(city).to eq("Los Angeles")
  end

  it "should return nil for city names that are too incorrect" do
    city = SpellCheckerUSA::SpellChecker.correct_city "Los Angelesaaaaa", "CA"
    expect(city).to eq(nil)
  end

  it "should correct state names" do
    state = SpellCheckerUSA::SpellChecker.correct_state "Californa"
    expect(state).to eq("California")
  end

  it "should return nil for state names that are too incorrrect" do
    state = SpellCheckerUSA::SpellChecker.correct_state "Californiaaaaaa"
    expect(state).to eq(nil)
  end
end
