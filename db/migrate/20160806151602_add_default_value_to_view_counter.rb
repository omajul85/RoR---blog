class AddDefaultValueToViewCounter < ActiveRecord::Migration
  def change
  	change_column :articles, :view_counter, :integer, :default => 0
  end
end
