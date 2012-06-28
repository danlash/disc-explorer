class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.string :name
      t.string :manufacturer
      t.string :type
      t.integer :flight_difficulty
      t.integer :flight_speed
      t.integer :flight_glide
      t.integer :flight_turn
      t.integer :flight_fade

      t.timestamps
    end
  end
end
