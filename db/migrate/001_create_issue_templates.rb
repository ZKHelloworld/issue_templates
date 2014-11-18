class CreateIssueTemplates < ActiveRecord::Migration
  def change
    create_table :issue_templates do |t|
      t.string :title
      t.string :content
      t.integer :project_id
      t.integer :type #global or project
    end
  end
end
