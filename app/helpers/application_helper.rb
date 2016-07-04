module ApplicationHelper
  def meta_response(status_code, msg)
    case status_code
    when 200
      { code: 200, status: 'OK', message: msg, error: false, version: "#{I18n.t 'v1'}" }
    when 201
      { code: 201, status: 'OK', message: msg, error: false, version: "#{I18n.t 'v1'}" }
    else
      { code: status_code, status: 'Not OK', message: msg, error: true, version: "#{I18n.t 'v1'}" }
    end
  end
end
