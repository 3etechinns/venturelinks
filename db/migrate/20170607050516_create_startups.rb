class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :image_url
      t.string :address
      t.float :funding
      t.string :industry
      t.string :intro
      t.string :founder
      t.text :description

      t.timestamps

    end
  end
end
