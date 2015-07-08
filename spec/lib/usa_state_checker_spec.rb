describe "SpellChecker::USA" do
 it "should check state names" do
    state = SpellChecker::USA.check_state "Californa"
    expect(state).to eq("California")
  end

  it "should return the same state name for a correct state" do
    state = SpellChecker::USA.check_state "California"
    expect(state).to eq("California")
  end

  it "should return nil for state names that are too incorrect" do
    state = SpellChecker::USA.check_state "Californiaaaaaa"
    expect(state).to eq(nil)
  end
end
