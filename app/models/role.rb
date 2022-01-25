class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    actors_array = []
    self.auditions.each do |a|
      actors_array << a.actor
    end
      actors_array
  end

  def locations 
    locations_array = []
    self.auditions.each do |a|
      locations_array << a.location
    end
      locations_array
  end

  def lead
    hired_actors = self.auditions.where({hired: true})
    puts hired_actors
    if hired_actors.length == 0
      puts "no actor has been hired for this role"
    else
      hired_actors.first
    end
  end

  def understudy
    hired_actors = self.auditions.where(hired: true)
    binding.pry
    if hired_actors < 2
      "no actor has been hired for understudy for this role"
    else
      hired_actors.second
    end
  end

end