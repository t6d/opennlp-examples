require_relative "example_helper"

model = OpenNLP::English.pos_tagging_model
tagger = OpenNLP::POSTagger.new(model)
result = tagger.process(%w[Ruby is awesome])

result[0] # => NNP
result[1] # => VBZ
result[2] # => JJ

pp result
