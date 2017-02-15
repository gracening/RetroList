class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :type
      t.string :author
      t.string :sprint
      t.string :body
      t.string :team

      t.timestamps
    end
  end
end
