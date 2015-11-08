class CreateTableData < ActiveRecord::Migration
  def change
    create_table :datas do |t|
      t.datetime   :date , :null => false
      t.string     :uid , :null => false
      t.float      :delta_x , :null => false
      t.float      :delta_y , :null => false
      t.float      :delta_z , :null => false
      t.float      :longtitude , :null => false
      t.float      :latitude , :null => false
    end
  end
end
