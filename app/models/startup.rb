class Startup < ApplicationRecord
  has_many :cofoundings, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :founders, :through => :cofoundings, :source => :founder
end
