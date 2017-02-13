class Api::TestController < Api::BaseController
  skip_before_filter :verify_authenticity_token

  def send_data
    server_url = params[:url]
    if params[:step] == "1a"
      callback_response = get_json(server_url)
    elsif params[:step] == "1b"
      callback_response = get_blob(server_url)
    elsif params[:step] == "2"
      callback_response = post_json
    end
    render json: callback_response
    # render json: {status: "ok"}
  end

  def get_json(server_url)
    response = HTTParty.get(server_url)
    return response.body
  end

  def get_blob(server_url)
    response = HTTParty.get(server_url)
    return response.body
  end

  def recieve_get_json
    render json: { accepted: "get_json" }
  end

  def recieve_get_blob
    render json: { accepted: "get_blob" }
  end
end
