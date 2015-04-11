class Province < ActiveRecord::Base
  has_many :customers
  validates :name, :gst, presence: true
end
