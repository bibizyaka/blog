class AddForeignkey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :users, :articles
  end
end
