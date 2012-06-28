class FixTypeColumnName < ActiveRecord::Migration
  def up
    rename_column :discs, :type, :throw_type
  end


  def down
    rename_column :discs, :throw_type, :type
  end
end
