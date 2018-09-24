class Genre < ActiveRecord::Base
  has_many :songs

  def self.get_IDs
    self.all.collect { |genre|
      genre.id
    }
  end
end
