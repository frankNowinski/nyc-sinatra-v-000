class Figure < ActiveRecord::Base
  has_many :figure_titles
  has_many :titles, through: :figure_titles
  has_many :landmarks

  def landmarks=(landmark)
    binding.pry
    self.landmarks = Landmark.find_or_create_by(name: landmark)
  end
end
