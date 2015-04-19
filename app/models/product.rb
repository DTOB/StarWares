class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items
  validates :model, :description, :price, :stock_quantity, presence: true
  mount_uploader :image, ProductImageUploader

  def self.search(search)
    where('lower(model) like ?', "%#{search.downcase}%")
  end

  def self.jedi(jedi)
    where(jedi: true)
  end

  def self.search_jedis(search)
    where('lower(model) like ?', "%#{search.downcase}%").
    where(jedi: true)
  end

end