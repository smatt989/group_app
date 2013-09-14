class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :rooms, :name, :title
  end
end
