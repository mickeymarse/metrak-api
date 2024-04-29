class AddStatusToThoughts < ActiveRecord::Migration[7.1]
  def change
    add_column :thoughts, :status, :string, default: "public"
  end
end
