class AddPunchOutTimeToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :punch_out_time, :datetime
  end
end
