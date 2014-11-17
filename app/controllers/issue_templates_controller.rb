class IssueTemplatesController < ApplicationController
  #unloadable


  def index
    @project = Project.find(params[:project_id])
    @issueTemplates = IssueTemplate.all
  end

  #def new
  #end

  #def edit
  #end

  #def delete
  #end
end
