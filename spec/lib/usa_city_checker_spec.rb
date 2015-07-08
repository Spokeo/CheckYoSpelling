describe "CheckYoSpelling::USA" do
  it "should check city names" do
    city = CheckYoSpelling::USA.check_city "Los Angelos", "CA"
    expect(city).to eq("Los Angeles")
  end

  it "should return the same city name for a correct city" do
    city = CheckYoSpelling::USA.check_city "Los Angeles", "CA"
    expect(city).to eq("Los Angeles")
  end

  it "should return nil for city names that are too incorrect" do
    city = CheckYoSpelling::USA.check_city "Los Angelesaaaaa", "CA"
    expect(city).to eq(nil)
  end
end
