class Timer
  def initialize(app)
    @app = app
  end

  def call(env)
    start = Time.now
    status, headers, response = @app.call(env)
    stop = Time.now
    headers['X-Timing'] = (stop - start).to_s
    [status, headers, response]
  end

end
