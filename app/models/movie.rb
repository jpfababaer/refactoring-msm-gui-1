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

#1 This is where we define reusable methods we would like the Instances to use (i.e. a Row of director/movie/actor). SEARCH director.rb
class Movie < ApplicationRecord
  def director
    my_director_id = self.director_id

    matching_directors = Director.where({ id: my_director_id})

    the_director = matching_directors.at(0)

    return the_director

  end
end
