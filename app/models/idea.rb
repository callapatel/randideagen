class Idea < ActiveRecord::Base
  def self.random
    rand_id = rand(Idea.count)
    Idea.find(rand_id).name
  end
end
