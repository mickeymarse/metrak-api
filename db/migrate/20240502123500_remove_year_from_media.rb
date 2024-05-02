class RemoveYearFromMedia < ActiveRecord::Migration[7.1]
  def change
    remove_column :media, :year, :string
  end
end
