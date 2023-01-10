module EffPassphrase
  module Lists
    LOADED = {}

    def self.get(list_name)
      unless LOADED.has_key? list_name
        if list_name.include? ".."
          raise "No path injection attacks for you"
        end

        path = File.expand_path("../../../wordlists/#{list_name}.txt", __FILE__)
        File.open(path) do |f|
          LOADED[list_name] = f.readlines.map { |s| s.strip }
        end
      end
      LOADED[list_name]
    end
  end
end
