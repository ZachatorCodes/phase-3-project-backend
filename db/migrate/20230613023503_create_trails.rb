class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.integer :length
      t.integer :elevation
      t.string :location
      t.string :difficulty
    end
  end
end
