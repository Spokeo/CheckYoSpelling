describe "SpellCheckUSA::SpellChecker" do
  it "should check city names" do
    city = SpellCheckerUSA::SpellChecker.check_city "Los Angelos", "CA"
    expect(city).to eq("Los Angeles")
  end

  it "should return nil for city names that are too incorrect" do
    city = SpellCheckerUSA::SpellChecker.check_city "Los Angelesaaaaa", "CA"
    expect(city).to eq(nil)
  end

  it "should check state names" do
    state = SpellCheckerUSA::SpellChecker.check_state "Californa"
    expect(state).to eq("California")
  end

  it "should return nil for state names that are too incorrect" do
    state = SpellCheckerUSA::SpellChecker.check_state "Californiaaaaaa"
    expect(state).to eq(nil)
  end
end
