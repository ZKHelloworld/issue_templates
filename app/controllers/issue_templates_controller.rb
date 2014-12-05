class IssueTemplatesController < ApplicationController
  unloadable

  def index
    @project = Project.find_by_identifier params[:id]
    @templates = IssueTemplate.templates params[:id]
  end

  def new
    @project = Project.find_by_identifier params[:id]

    if request.post?
      template = IssueTemplate.create
      template.title = params[:template][:title]
      template.content = params[:template][:content]
      template.global = params[:template][:global]
      template.project = params[:id]

      if template.save
        flash[:notice] = l(:issue_template_created)
      else
        flash[:error] = l(:issue_template_create_fail)
      end
      redirect_to :action => 'index'
    end
  end

  def edit
    id = params[:issue_templates][:select]
    template = IssueTemplate.find(id)

    template.content = params[:issue_templates][:content]

    if template.save
        flash[:notice] = l(:issue_template_edited)
    else
        flash[:error] = l(:issue_template_edit_fail)
    end
    redirect_to :action => 'index'
  end

  def delete
    id = params[:template]
    template = IssueTemplate.find(id)

    if template.delete
        flash[:notice] = l(:issue_template_deleted)
    else
        flash[:error] = l(:issue_template_delete_fail)
    end
  end

  private

end
