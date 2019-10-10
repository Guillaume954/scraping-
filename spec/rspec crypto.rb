require_relative '../lib/crypto'

describe "the crypto_scrapper method" do
  it "the crypto_scrapper method should not be equal to nil and must be a Array" do
    expect(crypto_scrapper).not_to be_nil
    expect(crypto_scrapper).is_a?(Array)
  end
end
