class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client
 
  

  def history_count
    pet_histories.count
  end

  def average_weight
    pet_histories.average(:weight)
  end

  
  def average_height
    pet_histories.average(:height)
  end

  def max_weight
    pet_histories.maximum(:weight)
  end

  def max_height
    pet_histories.maximum(:height)
  end
end
