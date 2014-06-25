class Recipe < ActiveRecord::Base
  def ingredient_list
    return ingredients.split(",")
  end  

  def directions_list
    return directions.split(",")
  end

  def author_initials
    names = author.split(" ")
      initials = []
      names.each do |name|
      initials << name[0]
    end
    initials = initials.join
    return initials
  end

  def date_created
   return created_at.strftime("%b %d, %Y")
  end

  def date_updated
     return updated_at.strftime("%b %d, %Y")
  end
end
