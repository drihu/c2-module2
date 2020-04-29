class String
  def vowel?
    self.match?(/\A[aeiou]\z/i)
  end
end

describe String do
  context '#vowel?' do
    it "returns false because it's not a vowel" do
      expect("".vowel?).to eq false
    end

    it "returns true because it's a vowel" do
      expect("a".vowel?).to eq true
    end

    it "returns true because it's a vowel" do
      expect("E".vowel?).to eq true
    end

    it "returns false because it's not a vowel" do
      expect("ou".vowel?).to eq false
    end

    it "returns false because it's not a vowel" do
      expect("z".vowel?).to eq false
    end

    it "returns false because it's not a vowel" do
      expect("lol".vowel?).to eq false
    end
  end
end
