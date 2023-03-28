class CreateStoryboards < ActiveRecord::Migration[7.0]
  def change
    create_table :storyboards do |t|

      t.timestamps
    end
  end
end
