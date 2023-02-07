class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
