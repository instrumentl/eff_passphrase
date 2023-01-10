This repository contains a very simple Ruby library for using the EFF's [Diceware wordlists](https://www.eff.org/dice) to generate secure passphrases.

"EFF&reg;" is a registered trademark of the [Electronic Frontier Foundation](https://www.eff.org/). This repository and project are in no way affiliated by, endorsed by, or associated with the Electronic Frontier Foundation Foundation.

## Usage

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'eff_passphrase'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install eff_passphrase
```

## Invocation

```ruby
require "eff_passphrase"

EffPassphrase.generate(num_words: 6)
```

This returns an object whose `.to_s` is the raw password, and which includes a helpful `.bits_of_security` field.

You can select a wordlist with the `list` kwarg; the following lists are available:

 - `eff_large_wordlist` (default)
 - `eff_short_wordlist_1` (shorter words; you should use more of them to get the same bits of security)
 - `eff_short_wordlist_2_0` (shorter words; you should use more of them to get the same bits of security)
 - `unsafe_extremely_small` (don't use this except for testing)
