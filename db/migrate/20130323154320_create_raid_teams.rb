class CreateRaidTeams < ActiveRecord::Migration
  def change
    create_table :raid_teams do |t|
      t.string :name

      t.timestamps
    end
  end
end
