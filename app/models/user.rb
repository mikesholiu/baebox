class User < ActiveRecord::Base
  
  has_many :likes, dependent: :destroy
  has_many :products, through: :likes

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider 
      user.uid      = auth.uid
      user.name     = auth.info.name

      if user.uid == ENV["admin_uid"]
        user.admin = true
      else
        user.admin = false
      end

      user.save

    end
  end
  
  def like!(product)
    self.likes.create!(product_id: product.id)
  end

  def unlike!(product)
    like = self.likes.find_by_product_id(product.id) 
    like.destroy!
  end

  def like?(product)
    self.likes.find_by_product_id(product.id)
  end

end
