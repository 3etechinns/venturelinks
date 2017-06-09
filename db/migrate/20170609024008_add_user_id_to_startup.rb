class AddUserIdToStartup < ActiveRecord::Migration[5.0]
  def change
    add_column :startups, :User_id, :integer
  end
end
