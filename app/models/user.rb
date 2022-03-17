class User < ApplicationRecord
  after_create :set_role
  has_many :recipes, foreign_key: 'user_id'
  has_many :inventories, foreign_key: 'user_id'
  has_many :foods, foreign_key: 'user_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_role
    update(role: 'user')
  end
end
