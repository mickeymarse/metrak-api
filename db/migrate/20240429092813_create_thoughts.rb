class CreateThoughts < ActiveRecord::Migration[7.1]
  def change
    create_table :thoughts do |t|
      t.text :body
      t.references :medium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
