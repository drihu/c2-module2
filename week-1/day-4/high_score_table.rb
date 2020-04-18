class HighScoreTable
  def initialize(limit)
    @scores = []
    @limit = limit
  end

  def scores
    @scores
  end

  def update(score)
    @scores = (@scores << score).sort.reverse[0...@limit]
  end

  def reset
    @scores = []
  end
end

high_scores = HighScoreTable.new(3)
p high_scores.scores # print []
high_scores.update(10)
p high_scores.scores # print [10]
high_scores.update(8)
high_scores.update(12)
p high_scores.scores # print [12, 10, 8]
high_scores.update(5)
p high_scores.scores # print [12, 10, 8]
high_scores.update(10)
p high_scores.scores # print [12, 10, 10]
high_scores.update(10)
p high_scores.scores # print [12, 10, 10]
high_scores.update(20)
p high_scores.scores # print [20, 12, 10]
high_scores.update(20)
p high_scores.scores # print [20, 20, 12]
high_scores.update(20)
p high_scores.scores # print [20, 20, 20]
high_scores.reset()
p high_scores.scores # print []
