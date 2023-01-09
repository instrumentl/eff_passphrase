require "eff_passphrase/version"
require "eff_passphrase/lists"
require "eff_passphrase/passphrase"

require "securerandom"

module EffPassphrase
  # Generate a new passphrase from the given list.
  def self.generate(num_words: 6, separator: "-", list: "eff_large_wordlist")
    words = EffPassphrase::Lists.get(list)
    bits_per_word = Math.log(words.length, 2)
    bits_of_security = bits_per_word.floor.to_i * num_words
    s_passphrase = num_words.times.map do
      index = SecureRandom.random_number(0...words.length)
      words[index]
    end.join(separator)
    EffPassphrase::Passphrase.new(s_passphrase, bits_of_security)
  end
end
