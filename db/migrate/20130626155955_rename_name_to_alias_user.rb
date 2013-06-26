class RenameNameToAliasUser < ActiveRecord::Migration
  def up
	  rename_column :users, :name, :alias
  end

  def down
	  rename_column :users, :alias, :name
  end
end
