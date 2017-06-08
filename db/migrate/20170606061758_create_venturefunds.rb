class CreateVenturefunds < ActiveRecord::Migration[5.0]
  def change
    create_table :venturefunds do |t|
      t.string :name
      t.string :image_url
      t.string :address
      t.float :funding
      t.string :industry
      t.string :intro
      t.string :partner
      t.string :portfolio

      t.timestamps

    end
  end
end
