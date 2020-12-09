class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
     
      t.string :title
      t.text :explanation, limit: 4294967295
      t.text :text, limit: 4294967295
      t.timestamps
    end
  end
end
