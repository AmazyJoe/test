class AddWebsiteNameToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :website_name, :string
  end
end
