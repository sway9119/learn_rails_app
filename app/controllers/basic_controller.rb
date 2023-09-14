class BasicController < ApplicationController
  def name
    render plain: <<-EOS
      コントローラ名：#{controller_name}
      コントローラパス：#{controller_path}
      アクション名：#{action_name}
      EOS
  end

end
