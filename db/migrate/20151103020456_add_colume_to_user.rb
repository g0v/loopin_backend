class AddColumeToUser < ActiveRecord::Migration
  def change
    add_column  :users , :salt , :string
  end
end
