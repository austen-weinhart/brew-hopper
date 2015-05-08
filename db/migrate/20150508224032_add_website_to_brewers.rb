class AddWebsiteToBrewers < ActiveRecord::Migration
  def change
    add_column :brewers, :website, :string
  end
end
