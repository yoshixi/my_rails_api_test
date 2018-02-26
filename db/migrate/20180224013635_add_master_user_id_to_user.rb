class AddMasterUserIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :master_user, index: true, null: false
  end
end
