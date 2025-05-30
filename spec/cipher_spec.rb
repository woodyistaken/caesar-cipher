require_relative "../cipher"

describe "#caesar_cipher" do
  context "given negative shift" do
    let(:shift) { -1 }
    let(:message) { "h" }
    it "no error" do
      expect { caesar_cipher(message, shift) }.not_to raise_error
    end
    it "shift left by 1" do
      expect(caesar_cipher(message, shift)).to eq("g")
    end
  end
  context "given positive shift" do
    let(:shift) { 1 }
    let(:message) { "h" }
    it "no error" do
      expect { caesar_cipher(message, shift) }.not_to raise_error
    end
    it "shift right by 1" do
      expect(caesar_cipher(message, shift)).to eq("i")
    end
  end
  context "given shift of 50" do
    let(:shift) { 50 }
    let(:message) { "h" }
    it "shift right by 1" do
      expect(caesar_cipher(message, shift)).to eq("f")
    end
  end
  context "given message with both caps and small" do
    let(:shift) { 50 }
    let(:message) { "hHhHhH" }
    it "shift right by 1" do
      expect(caesar_cipher(message, shift)).to eq("fFfFfF")
    end
  end
end
