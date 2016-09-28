class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :actor_id
      t.integer :movie_id
      t.text :character_name

      t.timestamps

    end
  end
end
