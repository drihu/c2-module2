class ScoreTable
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

def HighScoreTable(limit)
  ScoreTable.new(limit)
end

highScoreTable = HighScoreTable(3)
p highScoreTable
p highScoreTable.scores # []
highScoreTable.update(10)
p highScoreTable.scores # [10]
highScoreTable.update(8)
highScoreTable.update(12)
highScoreTable.update(5)
highScoreTable.update(10)
p highScoreTable.scores # [12, 10, 10]
highScoreTable.reset()
p highScoreTable.scores # []
