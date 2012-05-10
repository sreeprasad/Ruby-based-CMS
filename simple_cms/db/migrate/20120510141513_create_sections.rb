class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :page
      t.string "name",:limit =>50,:default =>""
      t.string "content_type"
      t.text "content"
      t.integer "position" 
      t.boolean "visible" ,:default=>false
      t.timestamps
    end
    add_index("sections", "page_id")
  end
end
