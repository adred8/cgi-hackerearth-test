class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.number :number
      t.boolean :aisle
      t.boolean :reserved

      t.timestamps
    end
  end
end
