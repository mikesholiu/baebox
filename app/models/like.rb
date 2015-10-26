class Like < ActiveRecord::Base
  belongs_to :users, :products
end
