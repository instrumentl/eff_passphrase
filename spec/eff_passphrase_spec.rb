require "spec_helper"

RSpec.describe EffPassphrase do
  describe "#VERSION" do
    it do
      expect(described_class.const_get(:VERSION)).not_to be nil
    end
  end

  describe "#generate" do
    it "does something sensible by default" do
      passphrase = described_class.generate
      expect(passphrase.length).to be > 20
    end

    context "when using a wordlist with one item" do
      before do
        allow(EffPassphrase::Lists).to receive(:get).and_return(["banana"])
      end

      it "honors separator and num words" do
        expect(described_class.generate(num_words: 3, separator: "🍌").to_s).to eq "banana🍌banana🍌banana"
      end
    end
  end
end
