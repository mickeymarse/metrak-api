class AddFormatToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :format, :string
  end
end
