class Landmark <ActiveRecord::Base
  belongs_to :figure

  def add_figure=(figure_id)
    self.figure =  Figure.find_or_create_by(id: figure_id)
  end
end
