class AddActivoToSubscribers < ActiveRecord::Migration[5.0]
  def change
    add_column :subscribers, :activo, :boolean, :default => true
  end
end
