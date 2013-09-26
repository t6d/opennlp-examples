require_relative 'example_helper'

tokenizer = OpenNLP::Tokenizer.new(OpenNLP::English.tokenization_model)
tagger    = OpenNLP::POSTagger.new(OpenNLP::English.pos_tagging_model)
chunker   = OpenNLP::Chunker.new(OpenNLP::English.chunking_model)

sentence  = "Kiev is a really interesting city."

tokens = tokenizer.process(sentence)
tags = tagger.process(tokens)
chunks = chunker.process(tokens, tags)

pp tokens.zip(chunks)



