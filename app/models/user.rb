class User < ApplicationRecord
  enum role: [:user, :employee, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :Documents, foreign_key: "user_id"

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end