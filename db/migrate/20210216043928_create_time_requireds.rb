class CreateTimeRequireds < ActiveRecord::Migration[6.0]
  def change
    create_table :time_requireds do |t|

      t.timestamps
    end
  end
end
