class Founder < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cofoundings, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :startups, :through => :cofoundings, :source => :startup
end
