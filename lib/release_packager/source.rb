module ReleasePackager
  module Source
    SOURCE_SUFFIX = "SOURCE"

    protected
    def create_source_folder
      folder = "#{folder_base}_#{SOURCE_SUFFIX}"

      desc "Create source folder"
      task "release:source" => folder

      file folder => files do
        mkdir_p RELEASE_FOLDER_SOURCE
        cp_r files
      end
    end
  end
end