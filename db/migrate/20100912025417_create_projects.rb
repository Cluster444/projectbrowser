class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.string :length
      t.string :id
      t.string :work_status
      t.string :last_modified 
      t.string :date_create
      t.string :external_identifier
      t.string :uri

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
