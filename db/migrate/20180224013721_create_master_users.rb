class CreateMasterUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :master_users do |t|
      t.timestamps
    end
  end
end
