class ChangeStatusToBooleanInWorkers < ActiveRecord::Migration[7.0]
  def change
    rename_column :workers, :status, :status_active
    change_column :workers, :status_active, :boolean, default: false
  end
end
