class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text   :body

      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
