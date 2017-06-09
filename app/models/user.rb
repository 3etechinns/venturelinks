class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :venturefunds, :class_name => "Ventrefund", :foreign_key => "User_id"
has_many :startups, :class_name => "Startup", :foreign_key => "User_id"

validates:username,presence: true
validates:username,uniqueness: true



end
