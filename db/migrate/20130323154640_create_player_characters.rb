class CreatePlayerCharacters < ActiveRecord::Migration
  def change
    create_table :player_characters do |t|
      t.integer :raid_team_id
      t.string :realm
      t.string :name
      t.integer :average_ilevel
      t.text :notes

      t.timestamps
    end
  end
end
