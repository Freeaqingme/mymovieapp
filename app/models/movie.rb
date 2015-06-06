class Movie < ActiveRecord::Base
  before_create :getimdbdescription
  before_create :set_number

  def imdbid=(val)
    super val.match(/title\/tt([0-9]+)/)[1]
  end

  def getimdbdescription

    i = Imdb::Movie.new(imdbid)
    self.name=i.title
    self.release=i.release_date
    self.director=i.director.to_sentence
    self.synopsis=i.plot
    self.poster=i.poster

  end
  def set_number
    self.number=(Movie.maximum(:number) || 0) + 1
  end
end
