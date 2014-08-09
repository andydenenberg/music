class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :name
      t.integer :user
      t.string :youtube_id
      t.string :filename
      t.integer :played
      t.integer :rating
      t.string :comments

      t.timestamps
    end
  end
end
