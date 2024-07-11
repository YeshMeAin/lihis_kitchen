# app/controllers/admin/sessions_controller.rb
module Admin
  class SessionsController < Devise::SessionsController
    layout 'admin'

    # Override the methods if you want custom behavior
    def new
      super
    end

    def create
      super
    end

    def destroy
      super
    end
  end
end
