class BasicController < ApplicationController
  def name
    render plain: <<-EOS
      コントローラ名：#{controller_name}
      コントローラパス：#{controller_path}
      アクション名：#{action_name}
      EOS
  end

  def req_header_user_agent
    render plain: request.headers['User-Agent']
  end

  def req_headers
    @headers = request.headers
  end

  def render_inline
    # 現在時刻を表示
    render inline: '<%= Time.now %>'
  end

end
