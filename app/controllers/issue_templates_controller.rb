class IssueTemplatesController < ApplicationController
  unloadable

  def index
    @project = Project.find_by_name params[:id]
    @all_templates = IssueTemplate.all_templates params[:id]
  end

  def new
    @project = Project.find_by_name params[:id]

    if request.post?
      template = IssueTemplate.create
      template.title = params[:template][:title]
      template.content = params[:template][:content]
      template.global = params[:template][:global]
      template.project = params[:id]

      if template.save
        flash[:notice] = l(:issue_template_created)
        redirect_to :action => 'index'
      end
    end
  end

  def edit
  end

  def delete
    id = params[:id]
  end

  private

end
