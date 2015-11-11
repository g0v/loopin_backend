class RenameRawDatasToRaws < ActiveRecord::Migration
  def change
    rename_table :raw_datas , :raws
  end
end
