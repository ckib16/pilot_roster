class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :base
      t.string :unit
      t.string :country
      t.string :state
      t.boolean :oconus, default: false
      t.string :pascode
      t.integer :billets
      t.string :emblem_url
    end
  end
end
