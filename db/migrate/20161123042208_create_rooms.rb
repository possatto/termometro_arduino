class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.float :temperature_max
      t.float :temperature_minimum

      t.timestamps
    end
  end
end
