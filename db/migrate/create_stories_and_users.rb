class CreateStoriesAndUsers < ActiveRecord::Migration
	def change
		create_table :stories do |t|
      		t.string :title
      		t.text :description

      		t.timestamps
      	end

      	create_table :users do |t|
      		t.string :username
      		t.string :password
      		t.string :email

      		t.timestamps
    	end

    	create_table :stories_users do |t|
    		t.belongs_to :story
    		t.belongs_to :user
    	end
    end
end