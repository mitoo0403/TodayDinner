class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :explanation
      t.text :image
      t.integer :category_id
      t.integer :time_id
      t.timestamps
    end
  end
end
