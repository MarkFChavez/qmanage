class Project < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: {maximum:30}

  def to_param
	  "#{id}-#{name.parameterize}"
  end
end
