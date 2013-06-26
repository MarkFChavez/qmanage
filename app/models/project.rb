class Project < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: {maximum:30}
end
