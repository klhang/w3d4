class CreateTablePoll < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.integer :author_id, null: false, unique: true
    end
  end
end
