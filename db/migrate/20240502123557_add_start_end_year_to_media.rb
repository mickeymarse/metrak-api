class AddStartEndYearToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :year, :integer
    add_column :media, :end_year, :integer
  end
end
