class RemoveTagsArrayFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :tags, :array
  end
end
