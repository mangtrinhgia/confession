class User < ActiveRecord::Base
  ADMIN = 1
  USER = 2
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_confesses

  def admin?
    return self.role == ADMIN
  end
end
