def my_languages(results)
  results.sort_by { |l, s| -s }.map { |l, s| l if s >= 60 }.compact
end

# Return the list of languages where your test score is at least 60,
# in descending order of the results.
p my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})
# prints ["Ruby", "Python"]
p my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})
# prints ["Dutch", "Greek", "Hindi"]
p my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})
# prints []
