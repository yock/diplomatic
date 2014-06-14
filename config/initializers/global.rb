module Global
  # Allows accessing config variables from application.yml like so:
  #   Global[:key]
  def self.[](key)
    unless @config
      raw_config = File.read(File.join(Rails.root, 'config', 'application.yml'))
      @config = YAML.load(raw_config)[Rails.env].symbolize_keys
    end
    @config[key]
  end

  def self.[]=(key, value)
    @config[key.to_sym] = value
  end
end
