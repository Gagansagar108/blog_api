# app/middleware/request_logger.rb
class RequestLogger
    def initialize(app)
      @app = app
    end
  
    def call(env)
      started_at = Time.now
      status, headers, response = @app.call(env)
      ended_at = Time.now
      req = Rack::Request.new(env)
      duration = (ended_at - started_at) * 1000.0
    
      Rails.logger.info({
        method: req.request_method,
        path: req.fullpath,
        ip: req.ip,
        status: status,
        duration: "#{duration.round(2)}ms",
        user_agent: req.user_agent
      }.to_json)
  
      [status, headers, response]
    end
  end
  