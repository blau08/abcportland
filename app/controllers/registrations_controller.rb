class RegistrationsController < Devise::RegistrationsController
 respond_to :js

 protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
