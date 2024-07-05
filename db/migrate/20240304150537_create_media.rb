class CreateMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :media do |t|
      t.string :title
      t.string :format
      t.string :appreciation
      t.integer :year
      t.integer :end_year

      t.timestamps
    end
  end
end
