class Person < ActiveRecord::Base
  has_one :address
  accepts_nested_attributes_for :address
  validates_presence_of :first_name
  def name
    [first_name, last_name].join(' ')
  end
end
