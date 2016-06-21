GA = {}
ga_list_files = Dir.glob("#{Rails.root}/config/ga_lists/*.yml")
ga_list_files.each do |filepath|
  filename = File.basename(filepath, ".yml")
  GA[filename.to_sym] = YAML.load_file(filepath)
end
