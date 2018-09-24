class Artist < ActiveRecord::Base
  has_many :songs

  def self.get_IDs
    self.all.collect { |artist|
      artist.id
    }
  end

  # put in namespace module?
  # def get_name
  #   self.name
  # end

end
