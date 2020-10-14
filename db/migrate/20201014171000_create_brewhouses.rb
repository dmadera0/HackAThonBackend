class CreateBrewhouses < ActiveRecord::Migration[6.0]
  def change
    create_table :brewhouses do |t|
      t.string :name
      t.string :city
      t.integer :postal_code
      t.text :url
      t.integer :phone

      t.timestamps
    end
  end
end
