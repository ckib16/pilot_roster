class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :name
      t.string :rank
      t.integer :hours
      t.string :qualification
      t.date :commision_date
      t.date :adsc
      t.string :avatar_url
      t.references :location, index: true, foreign_key: true
    end
  end
end
