class IssueTemplatesController < ApplicationController
  unloadable

  before_filter :find_project_by_project_id
  before_filter :authorize, :only => [:index, :new, :delete]

  def index
    @all_templates = IssueTemplate.all_templates(params[:project_id])
    @project_id = params[:project_id]
  end

  def new
    @project_id = params[:project_id]

    if request.post?
      template = IssueTemplate.create
      template.title = params[:template][:title]
      template.content = params[:template][:content]
      template.scope = params[:template][:scope]
      template.project_id = @project_id

      if template.save
        flash[:notice] = l(:issue_template_saved)
        redirect_to :action => 'index', :project_id => @project_id
      end

    end
  end

  def edit
  end

  def delete
    id = params[:id]
    puts '----------------------------------------'
    puts id
    puts '----------------------------------------'
  end

  private

end
