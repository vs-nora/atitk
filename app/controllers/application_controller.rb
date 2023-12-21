class ApplicationController < ActionController::Base

  before_action :set_breadcrumb

  private

  def set_breadcrumb
    @breadcrumb_array = [controller_name.titleize, action_name.titleize]
  end
end
