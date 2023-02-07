class CreateTimeclocks < ActiveRecord::Migration[7.0]
  def change
    create_table :timeclocks do |t|
      t.references :worker_id, null: false, foreign_key: true
      t.datetime :punch_in
      t.datetime :punch_out

      t.timestamps
    end
  end
end
