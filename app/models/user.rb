class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, presence: true
  validates :stage_name, presence:true, uniqueness: { case_sensitive: true }
  validates :phone_number, presence: true
  validates :birth_date, presence: true
  validates :race, presence: true
  validates :location, presence: false
  validates :height, presence: true
  validates :weight, presence: true

  validate :presence_of_ic_or_passport



  def presence_of_ic_or_passport
    errors.add(:base, "IC Numnber and Passport can't both be empty") if ic_number.nil? and passport.nil?
  end

end
