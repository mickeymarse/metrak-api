class RemoveReviewFromMedia < ActiveRecord::Migration[7.1]
  def change
    remove_column :media, :review, :text
  end
end
