class CreateMetaData < ActiveRecord::Migration
  def change
    create_table :meta_data do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
