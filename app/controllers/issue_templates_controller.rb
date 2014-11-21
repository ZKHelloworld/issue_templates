class IssueTemplatesController < ApplicationController
  unloadable

  before_filter :find_project_by_project_id
  before_filter :authorize, :only => :index

  def index
    @issueTemplates = IssueTemplate.all :project_id => @project, :scope => 1
  end

  #def new
  #end

  #def edit
  #end

  #def delete
  #end

  private

end
