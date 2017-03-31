class AddEventidToEncuesta < ActiveRecord::Migration[5.0]
  def change
    add_column :encuesta, :event_id, :integer
  end
end
