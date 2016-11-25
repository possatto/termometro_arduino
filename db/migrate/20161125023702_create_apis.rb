class CreateApis < ActiveRecord::Migration[5.0]
  def change
    create_table :apis do |t|
      t.float :temp_max
      t.float :temp_mini
      t.float :temp

      t.belongs_to :room, index: true

      t.timestamps
    end
  end
end
