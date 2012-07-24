class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :last_name
      t.string :pin
      t.boolean :status

      t.integer :facility_id

      t.timestamps
    end
  end
end
