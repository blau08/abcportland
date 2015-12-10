class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :headline
      t.text :story
      t.string :tag
      t.timestamps null: false
    end
  end
end
