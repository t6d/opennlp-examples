require_relative "example_helper"

model = OpenNLP::English.sentence_detection_model
detector = OpenNLP::SentenceDetector.new(model)
result = detector.process <<-TEXT
Ruby is awesome. Ruby is great!
TEXT

result[0] # => "Ruby is awesome."
result[1] # => "Ruby is great!"

pp result
