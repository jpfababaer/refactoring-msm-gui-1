# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    my_character_id = self.id

    matching_characters = Character.where({actor_id: my_character_id})

    #Returns an ARR of characters (still have to take it out)
    matching_characters
    
    return matching_characters
  end
end
