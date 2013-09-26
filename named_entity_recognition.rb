require_relative "example_helper"

tokens = %w[This summer EuRuKo comes to Athens for two days on the 28th and 29th of June .]

m = OpenNLP::English.named_entity_recognition_model(:location)
f = OpenNLP::NameFinder.new(m)
ranges = f.process(tokens)
locations = ranges.map { |r| tokens[r] } # => ["Athens"]

pp locations
