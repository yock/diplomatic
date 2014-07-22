module Global
  # Allows accessing config variables from application.yml like so:
  #   Global[:key]
  def self.[](key)
    config[key]
  end

  private

  def self.config
    @config ||= load_config
  end

  def self.load_config
    yaml = File.read(File.join(Rails.root, 'config', 'application.yml'))
    @config = YAML.load(yaml)[Rails.env].symbolize_keys
  end
end
