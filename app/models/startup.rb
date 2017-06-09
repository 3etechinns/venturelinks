class Startup < ApplicationRecord

  has_many :comments, :dependent => :destroy
  
  belongs_to :user, :class_name => "User", :foreign_key => "User_id"
validates:User_id,presence: true
validates:name,uniqueness: true
validates:address,presence: true
validates:funding,presence: true
validates:intro,presence: true
end
