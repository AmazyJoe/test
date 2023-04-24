class AddWebsiteUrlToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :website_url, :string
  end
end
