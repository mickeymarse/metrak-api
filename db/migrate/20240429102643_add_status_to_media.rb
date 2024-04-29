class AddStatusToMedia < ActiveRecord::Migration[7.1]
  def change
    add_column :media, :status, :string, default: "public"
  end
end
