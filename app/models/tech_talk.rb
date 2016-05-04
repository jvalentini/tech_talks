class TechTalk < ActiveRecord::Base
  validates :title, presence: true
end
