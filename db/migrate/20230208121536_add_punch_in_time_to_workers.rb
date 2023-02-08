class AddPunchInTimeToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :punch_in_time, :datetime
  end
end
