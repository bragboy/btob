class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :message
      t.string :person
      t.datetime :local_time

      t.timestamps
    end
  end
end
