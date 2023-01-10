require "spec_helper"

RSpec.describe EffPassphrase::Passphrase do
  describe "#length" do
    it do
      expect(described_class.new("foo", 1).length).to eq 3
    end
  end

  describe "#[]" do
    it do
      expect(described_class.new("foo", 1)[0]).to eq "f"
      expect(described_class.new("foo", 1)[0...2]).to eq "fo"
    end
  end

  describe "#to_s" do
    it do
      expect(described_class.new("foo", 1).to_s).to eq "foo"
    end
  end
end
