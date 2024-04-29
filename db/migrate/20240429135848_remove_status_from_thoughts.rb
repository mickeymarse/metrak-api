class RemoveStatusFromThoughts < ActiveRecord::Migration[7.1]
  def change
    remove_column :thoughts, :status, :string
  end
end
