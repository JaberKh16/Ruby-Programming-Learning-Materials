# random signature generator
adjectives = %w[quick lazy sleepy noisy hungry]
nouns = %w[fox dog head leg tail cat]
verbs = %w[jumps lifts bites licks pats]
adverbs = %w[easily lazily noisily excitedly]

def random_word(words)
  words[rand(words.length)]
end

def generate_signature(adjectives, nouns, verbs, adverbs)
  adjective = random_word(adjectives)
  noun = random_word(nouns)
  verb = random_word(verbs)
  adverb = random_word(adverbs)
  "The #{adjective} #{noun} #{adverb} #{verb} over the lazy dog."
end

puts generate_signature(adjectives, nouns, verbs, adverbs)