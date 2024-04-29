class AddImageToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :image, :string
  end
end
