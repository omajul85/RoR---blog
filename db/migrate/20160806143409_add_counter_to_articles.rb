class AddCounterToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :view_counter, :integer
  end
end
