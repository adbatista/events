class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.references :person, index: true

      t.timestamps
    end
  end
end
