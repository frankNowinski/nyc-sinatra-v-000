class Figure < ActiveRecord::Base
  has_many :figure_titles
  has_many :titles, through: :figure_titles
  has_many :landmarks

  def add_landmarks=(landmark_ids)
    landmark_ids.each do |landmark_id|
      landmarks << Landmark.find(landmark_id)
    end
  end

  def add_titles=(title_ids)
    title_ids.each do |title_id|
      titles << Title.find(title_id)
    end
  end

end
