class AddStatusToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :status, :string, default: "inactive"
  end
end
