module Map
    Map_List= YAML.load_file("#{Rails.root}/config/pr_maps.yaml")
    Map_Rule= YAML.load_file("#{Rails.root}/config/pr_rules.yaml")
end
