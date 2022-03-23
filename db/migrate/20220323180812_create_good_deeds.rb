class CreateGoodDeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :good_deeds do |t|
      t.string :title
      t.string :description
      t.integer :value
      t.integer :friend_id
      t.string :image_url

      t.timestamps
    end
  end
end
