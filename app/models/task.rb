class Task < ApplicationRecord

  def all
    @restaurants = Restaurant.all
  end
end
