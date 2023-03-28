class CreatePersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :personals do |t|

      t.timestamps
    end
  end
end
