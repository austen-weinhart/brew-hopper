class CreateBrewers < ActiveRecord::Migration
  def change
    create_table :brewers do |t|
      t.string :brewery
      t.string :email
      t.string :address
      t.string :state
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
