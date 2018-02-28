class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.string :brewery
      t.string :style
      t.integer :abv

      t.timestamps
    end
  end
end
