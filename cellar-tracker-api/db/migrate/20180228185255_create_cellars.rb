class CreateCellars < ActiveRecord::Migration[5.1]
  def change
    create_table :cellars do |t|
      t.integer :userId
      t.integer :beerId
      t.integer :rating

      t.timestamps
    end
  end
end
