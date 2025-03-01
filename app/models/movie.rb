# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  belongs_to(:director)
  has_many(:characters)
  has_many(:cast, {:through=>:characters, :source=>:actor})
  #has_many(:characters, {:class_name=>"Character", :foreign_key=>"movie_id"})
  # belongs_to(:director, {:foreign_key => "director_id"})
  # belongs_to(:director, {:class_name => "Director", :foreign_key => "director_id"})

  # def director
    #key = self.director_id

    #matching_set = Director.where({ :id => key })

    #the_one = matching_set.at(0)

    #return the_one
  # end
end
