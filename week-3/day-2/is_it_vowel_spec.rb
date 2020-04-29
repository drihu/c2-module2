class String
  def vowel?
    self.match?(/\A[aeiou]\z/i)
  end
end

describe String do
  context '#vowel?' do
    it "verifies if it's a vowel" do
      expect("".vowel?).to eq false
      expect("a".vowel?).to eq true
      expect("E".vowel?).to eq true
      expect("ou".vowel?).to eq false
      expect("z".vowel?).to eq false
      expect("lol".vowel?).to eq false
    end
  end
end
