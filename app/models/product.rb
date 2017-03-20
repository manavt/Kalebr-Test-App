class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: true
  has_one :document
  has_many :order_items
  belongs_to :category
  accepts_nested_attributes_for :document
=begin
  searchable do
      text :title, :base_price
      time :created_at
      string :base_price
      text :document do
        document.photo_file_name unless document.blank?
      end
  end
=end

 def self.search(str)
   unless  str.blank?
     if str.is_a?(String)
       where("title like '%#{str}%'")
     elsif str.is_a?(BigDecimal)
        where(price: str.to_d)
      end
   else
     all
    end
 end

  def base_price
    price.to_i
  end
end
