class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :startup_id
      t.integer :founder_id
      t.integer :venturefund_id
      t.integer :partner_id

      t.timestamps

    end
  end
end
