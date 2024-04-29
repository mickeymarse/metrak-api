class AddDetailsToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :type, :string
    add_column :media, :year, :integer
    add_column :media, :appreciation, :string
  end
end
