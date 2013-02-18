Sidekiq.options.merge!(YAML.load_file(Rails.root.join('config/sidekiq.yml')))
