class AddAltextToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :altext, :text
  end
end
