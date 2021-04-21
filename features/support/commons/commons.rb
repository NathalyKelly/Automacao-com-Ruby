def printscreen(file_name, result)
  path = 'reports/screenshots/'
  name = "#{file_name.gsub(/[^\w\s]/, '').tr(' ', '_')}_#{result}.png"
  screenshot = "#{path}#{name}"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'SCREENSHOT')
end

def get_test_data(path)
  get_data(path, YAML_DATA)
end

def get_config(path)
  get_data(path, CONFIG_DATA)
end

def get_data(path, data)
  path = path.split(' ') if path.instance_of? String
  path.each do |key|
    data = data[key]
    break if data.nil?
  end
  data
end
