class Landmark <ActiveRecord::Base
  belongs_to :figure

  def figure=(name)
    self.figure_id = Figure.find_or_create_by(name: name).id
  end
end
