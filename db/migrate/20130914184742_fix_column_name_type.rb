class FixColumnNameType < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :type_name
  end
end
