class AddUserIdToVenturefund < ActiveRecord::Migration[5.0]
  def change
    add_column :venturefunds, :User_id, :integer
  end
end
