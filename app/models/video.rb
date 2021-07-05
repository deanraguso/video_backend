class Video < ApplicationRecord
  belongs_to :user

  def self.random
    Video.offset(rand(Video.count)).first
  end
end
