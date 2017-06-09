class RemoveFounderFromStartup < ActiveRecord::Migration[5.0]
  def change
    remove_column :startups, :Founder, :string
  end
end
