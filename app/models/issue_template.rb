class IssueTemplate < ActiveRecord::Base
  unloadable

  def self.scopes
    return [:global, :project]
  end

  def self.all_templates(project_id)
    global = IssueTemplate.find_all_by_scope(0)
    project = IssueTemplate.find_all_by_project_id(project_id, :conditions => 'scope = 1')

    return global + project
  end

  def current_scope(id)
    return IssueTemplate.find(:id => id).scope
  end

end
