require_relative "spec_helper.rb"
describe 'Create tests for exchange rates json' do

  before(:each) do
    @a_test = ParseJSON.new("json-exchange-rates.json")
  end

  it "should have a value of EUR for key base" do
    expect(@a_test.json_file["base"]).to eq("EUR")
  end

end
