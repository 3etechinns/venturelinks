class Comment < ApplicationRecord
  belongs_to :venturefund
  belongs_to :startup
  belongs_to :partner
  belongs_to :founder
end
