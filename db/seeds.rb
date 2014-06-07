master_data = YAML.load_file 'config/master_data.yml'

master_data['territory'].each do |territory|
  Territory.create_with(name: territory['name']).find_or_create_by_code(territory['code'])
end

master_data['super_power'].each do |super_power|
  SuperPower.find_or_create_by_name(super_power['name'])
end
