class CreateIssueTemplates < ActiveRecord::Migration
  def change
    create_table :issue_templates do |t|
      t.string :title
      t.string :content
    end
  end
end
