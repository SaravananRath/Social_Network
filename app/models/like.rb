class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user , class_name: "User", foreign_key: "user_id"
  validates :user, uniqueness: {scope: :post}

end
