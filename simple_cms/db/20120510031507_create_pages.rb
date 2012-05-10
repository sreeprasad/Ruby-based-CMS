class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer "subject_id"
      t.references :subject
      t.string "name", :limit =>50,:default =>""
      t.string "permalink"
      t.integer "position" 
      t.boolean "visible" 
      t.int "subject_id" 
      t.timestamps
    end
    add_index("pages","subject_id")
    add_index("pages","permalink")
  end
end
