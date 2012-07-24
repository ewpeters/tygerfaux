class AddSyncKeyToResidents < ActiveRecord::Migration
  def change
    add_column :residents, :sync_key, :integer
  end
end
