class RenameTableDatas < ActiveRecord::Migration
  def change
    rename_table :datas , :raw_datas
  end
end
