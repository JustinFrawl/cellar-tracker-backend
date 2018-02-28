class CreateBrewers < ActiveRecord::Migration[5.1]
  def change
    create_table :brewers do |t|
      t.integer :breweryId
      t.string :name

      t.timestamps
    end
  end
end
