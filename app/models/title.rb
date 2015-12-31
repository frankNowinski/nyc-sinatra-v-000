class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles

  def add_figure_by_id(figure_id)
    figure = Figure.find(figure_id)
    self.figure_titles.build(figure: figure)
  end

  def add_figures=(figure_ids)
    figure_ids.each do |figure_id|
      self.add_figure_by_id(figure_id)
    end
  end
end
