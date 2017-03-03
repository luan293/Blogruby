class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      #t.string :role, :default => "none"
      t.references :user, index: true
      t.timestamps
    end
  end
end
