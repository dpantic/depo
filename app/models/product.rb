class Product < ActiveRecord::Base
  default_scope :order => 'title'
<<<<<<< HEAD
  has_many :line_items 
  has_many :orders, :through => :line_items
  #

  before_destroy :ensure_not_referenced_by_any_line_item
  #...
  
  
  # validation stuff...
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
# 
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :title, :length => {:minimum => 10}
  private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.count.zero?
        return true
      else
        errors[:base] << 'Line Items present'
        return false
      end
    end
end


=======
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  
  #ensure that are no line items referening this product
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      error[:base] << "Line Items present"
    end
  end
  
  #validation stuf...
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => { :greater_then_or_equal_to => 0.01 }
  validates :title, :uniqueness => true
  validates :image_url, :format => {
            :with => %r{\.(gif|jpg|png)$}i,
            :message => 'must be a URL fot GIF, JPG or PNG image.'
  }
end
>>>>>>> 72a6b0fda60331618bef674b43236ea7b625d541
