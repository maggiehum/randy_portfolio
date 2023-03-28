class CreateConceptArts < ActiveRecord::Migration[7.0]
  def change
    create_table :concept_arts do |t|

      t.timestamps
    end
  end
end
