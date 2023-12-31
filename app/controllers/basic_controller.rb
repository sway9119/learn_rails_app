require 'net/http'

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

  def render_xml
    personal = {'name' => 'Yamada', 'old' => 28}
    render xml: personalc
  end

  def render_json
    personal = {name: "Yamada", old: 28}
    render json: personal
  end

  def xml_to_json
    # 国立国会図書館サーチのAPIを利用し、「猫」に関する文献を検索
    # (https://iss.ndl.go.jp/information/api/riyou/)
    Net::HTTP.start('iss.ndl.go.jp', use_ssl: true) do |http|
      res = http.get('/api/opensearch?cnt=10&title='+ERB::Util.url_encode('猫')+'&ndc=2&dpid=iss-ndl-opac')
      # XML形式をハッシュ化してからJSON形式に変換する
      #（JSON形式をハッシュ化するには、ActiveSupport::JSON.decodeメソッドを使う）
      render json: Hash.from_xml(res.body)
    end
  end

  def res_head
    # 応答ステータス（404 Not　Found）を通知
    head :not_found
  end

  def res_redirect
    redirect_to 'https://wings.msn.to/', status: :moved_permanently, allow_other_host: true
  end

  def xml_build
    # /basic/xml_build/1.xmlでアクセスされた場合に対応
    @article = Article.find(params[:id])
    respond_to do |format|
      format.xml
    end
  end

  def redirect_flash
    redirect_to({ action: 'redirect_flash2'}, notice: 'noticeメッセージ')
  end

  def redirect_flash2
  end

end
