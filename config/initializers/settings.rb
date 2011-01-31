require 'yaml'

SETTINGS = YAML.load_file("#{Rails.root}/config/settings.yml")
REPO_DIR = SETTINGS['repo_dir']
