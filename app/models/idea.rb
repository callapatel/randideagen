class Idea < ActiveRecord::Base
  def self.random
    rand_id = rand(Idea.count) + 1 
    Idea.find(rand_id).name
  end
end
