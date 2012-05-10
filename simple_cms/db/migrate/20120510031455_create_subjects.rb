class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
        t.string "name", :limit =>50,:default =>""
        t.integer "position" 
        t.boolean "visible" ,:default=>false
        t.timestamps
    end
  end
end