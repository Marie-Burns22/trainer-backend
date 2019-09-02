class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :request_method

      t.timestamps
    end
  end
end
