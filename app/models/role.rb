class Role < ActiveRecord::Base
  attr_accessible :name

  # Validation
  validates_presence_of :name
end
