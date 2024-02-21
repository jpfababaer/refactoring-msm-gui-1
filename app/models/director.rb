# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

#2 We are defining another type of method for the Instances of Director to use. We get the primary ID of the director Instance -> query the Movie database to find the Movie Instance that contains the FK == to the PK (essentially director_id in Movie Instance) -> return that Movie Instance = now we can utilize its data. SEARCH director_templates/show.html.erb
class Director < ApplicationRecord

  def filmography
    my_id = self.id

    matching_movies = Movie.where({director_id: my_id})

    return matching_movies

  end

end
