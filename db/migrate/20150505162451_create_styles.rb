class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :pale_lager
      t.string :pilsner
      t.string :light_lager
      t.string :dark_lager
      t.string :brown_ale
      t.string :porter
      t.string :stout
      t.string :witbier
      t.string :other

      t.timestamps null: false
    end
  end
end
