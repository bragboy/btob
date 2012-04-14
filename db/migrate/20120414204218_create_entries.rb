class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :message
      t.string :person

      t.timestamps
    end
  end
end
