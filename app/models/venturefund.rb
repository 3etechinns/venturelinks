class Venturefund < ApplicationRecord
  has_many :partners, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
