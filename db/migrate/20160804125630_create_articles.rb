class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
    	t.text :body

    	# creates the columns created_at and updated_at automatically
      t.timestamps null: false
    end
  end
end
