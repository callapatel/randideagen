class Idea < ActiveRecord::Base
  def self.random
    #rand_id = rand(Idea.count) + 1
    #Idea.find(rand_id).name
    Idea.limit(1).order("RANDOM()").each do |one|
      @huh = one.name
    end
    return @huh
  end


end
