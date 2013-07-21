class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :string
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
