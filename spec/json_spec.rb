require_relative "spec_helper.rb"
describe 'Create tests for exchange rates json' do

  before(:each) do
    @a_test = ParseJSON.new("json-exchange-rates.json")
  end

  it "should have a value of EUR for key base" do
    expect(@a_test.json_file["base"]).to eq("EUR")
  end

  it "should have a value EUR for key base" do
    expect(@first_test.json_file["base"]).to eq("EUR")
  end

  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["date"]).to eq("2017-07-26")
  end

  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].values).to all(be_an(Float))
  end
  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].keys).to all(be_an(String))
  end
  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].length).to eq(31)
  end
  it "should have a very first key of Australian Dollar- AUD" do
    expect(@first_test.json_file["rates"][0].key).to eq("AUD")
  end
  it "should have a very last key of ZAR" do
    expect(@first_test.json_file["rates"].last.key).to eq("ZAR")
  end


end
