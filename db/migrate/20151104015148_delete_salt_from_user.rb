class DeleteSaltFromUser < ActiveRecord::Migration
  def change
    remove_column :users , :salt
  end
end
