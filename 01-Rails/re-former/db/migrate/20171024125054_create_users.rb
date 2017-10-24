class CreateUsers < ActiveRecord::Migration[5.1]
 
validates :username, presence: true
validates :email, presence: true
validates :bio, presence: true

  def change
    create_table :users do |t|
    	t.string :username
    	t.string :email
    	t.text :bio
      t.timestamps
    end
  end
end
