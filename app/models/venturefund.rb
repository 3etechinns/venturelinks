class Venturefund < ApplicationRecord
  has_many :partners, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  belongs_to :user, :class_name => "User", :foreign_key => "User_id"
  validates:User_id,presence: true
end
