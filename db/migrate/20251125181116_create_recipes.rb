class CreateRecipes < ActiveRecord::Migration[8.1]
  def change
    create_table :recipes do |t|
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string :title
      t.text :body

      t.timestamps

      create_join_table :users, :recipes, table_name: :recipe_raters do |t|
        t.index [:user_id, :recipe_id], unique: true
      end
    end
  end
end
