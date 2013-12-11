class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :team_name
      t.string :team_url

      t.timestamps
    end
  end
end
