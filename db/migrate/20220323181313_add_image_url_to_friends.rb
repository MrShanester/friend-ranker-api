class AddImageUrlToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :image_url, :string
  end
end
