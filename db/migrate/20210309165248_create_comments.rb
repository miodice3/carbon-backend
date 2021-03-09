class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :fed_id
      t.string :comment
      t.timestamps
    end
  end
end
