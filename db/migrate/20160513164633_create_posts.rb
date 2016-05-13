class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.belongs_to :user

  		t.text :title
  		t.text :content

  		t.timestamp null: false
  	end
  end
end
