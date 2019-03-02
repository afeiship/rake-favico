require "fileutils"

namespace :image do
  # rake hello_with_args[afei,bash]
  desc "Generate favico"
  task :favico, [:source, :dist, :sizes] do |task, args|
    args.with_defaults(:dist => "dist", :sizes => "32 64")
    # convert -resize x64 miaotu_rect.png dist/favicon.ico
    source = args[:source]
    dist = args[:dist]
    sizes = args[:sizes].split(/\s+/)

    FileUtils.mkdir_p dist

    sizes.each do |size|
      sh "convert -resize x#{size} #{source} #{dist}/favicon_#{size}.ico"
    end
  end
end
