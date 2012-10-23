class AddUrlTitleToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :url_title, :string
  end
end
