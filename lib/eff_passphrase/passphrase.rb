module EffPassphrase
  class Passphrase
    attr_reader :bits_of_security

    def initialize(s, bits_of_security)
      @inner = s
      @bits_of_security = bits_of_security
    end

    def length
      @inner.length
    end

    def [](i)
      @inner[i]
    end

    def to_s
      @inner
    end
  end
end
