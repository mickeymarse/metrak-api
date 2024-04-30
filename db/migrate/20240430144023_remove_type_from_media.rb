class RemoveTypeFromMedia < ActiveRecord::Migration[7.1]
  def change
    remove_column :media, :type, :string
  end
end
