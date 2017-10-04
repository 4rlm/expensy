class Account < ActiveRecord::Base

  include SampleModClass::InstanceMethods

  # has_many :expenses, :dependent => :destroy
  # belongs_to :user

end
