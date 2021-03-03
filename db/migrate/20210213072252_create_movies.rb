class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :explanation
      t.integer :category_id
      t.integer :time_required_id
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end