class AddEstadoToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :publico, :boolean, :default => false
    add_column :events, :estado, :boolean, :default => false
  end
end
