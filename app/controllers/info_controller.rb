class InfoController < ApplicationController
  def index
    render plain: app[:auther]
  end

  private

  def app
    LearnRailsApp::Application.config.appvar
  end
end
