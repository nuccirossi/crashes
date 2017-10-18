class CreateCrashes < ActiveRecord::Migration
  def change
    create_table :crashes do |t|
      t.date :date
      t.time :time
      t.string :location
      t.string :operator
      t.string :flight
      t.string :route
      t.string :type
      t.string :registration
      t.string :cn
      t.integer :aboard
      t.integer :fatalities
      t.integer :ground
      t.string :summary

      t.timestamps null: false
    end
  end
end
