class CreateCofoundings < ActiveRecord::Migration[5.0]
  def change
    create_table :cofoundings do |t|
      t.integer :founder_id
      t.integer :startup_id

      t.timestamps

    end
  end
end
