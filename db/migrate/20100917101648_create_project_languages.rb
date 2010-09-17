class CreateProjectLanguages < ActiveRecord::Migration
  def self.up
    create_table :project_languages do |t|
      t.string :project_id
      t.string :date_created
      t.string :description
      t.string :language_code
      t.string :language_direction
      t.string :language_name
      t.string :language_name_localized
      t.string :last_modified
      t.string :percent_complete
      t.string :title
      #t.timestamps
    end
  end

  def self.down
    drop_table :project_languages
  end
end
