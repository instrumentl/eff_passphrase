require "eff_passphrase/version"
require "eff_passphrase/lists"

require "securerandom"

module EffPassphrase
  # Generate a new passphrase from the given list.
  def self.generate(num_words: 6, separator: "-", list: "eff_short_wordlist_2_0")
    words = EffPassphrase::Lists.get(list)
    num_words.times.map do
      index = SecureRandom.random_number(0...words.length)
      words[index]
    end.join(separator)
  end
end
