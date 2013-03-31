class RaidTeam < ActiveRecord::Base
  attr_accessible :name

  has_many :members , class_name: 'PlayerCharacter'

  validates :name , uniqueness: true
end
