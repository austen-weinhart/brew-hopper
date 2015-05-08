class RemoveStylesColumnsAndAddNameColumn < ActiveRecord::Migration
  def change
  	remove_column :styles, :pale_lager, :string
  	remove_column :styles, :pilsner, :string
  	remove_column :styles, :light_lager, :string
  	remove_column :styles, :dark_lager, :string
  	remove_column :styles, :brown_ale, :string
  	remove_column :styles, :porter, :string
  	remove_column :styles, :stout, :string
  	remove_column :styles, :witbier, :string
  	remove_column :styles, :other, :string
  	add_column :styles, :name, :string
  end
end
