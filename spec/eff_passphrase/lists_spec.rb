require "spec_helper"

RSpec.describe EffPassphrase::Lists do
  describe "#get" do
    it "doesn't allow dumb injections" do
      expect {
        described_class.get "../../../../etc/passwd"
      }.to raise_error(RuntimeError)
    end

    it "only loads once" do
      expect(File).to receive(:open).once.and_call_original
      expect(described_class.get("unsafe_extremely_small")).to eq ["battery", "correct", "horse", "staple"]
      expect(described_class.get("unsafe_extremely_small")).to eq ["battery", "correct", "horse", "staple"]
    end
  end
end
