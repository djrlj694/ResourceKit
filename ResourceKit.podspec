Pod::Spec.new do |spec|
  spec.name = "ResourceKit"
  spec.version = "1.0.0"
  spec.summary = "Sample framework from blog post, not for real world use."
  spec.homepage = "https://github.com/djrlj694/ResourceKit"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Robert L. Jones" => '<EMAIL>' }
  spec.social_media_url = "http://twitter.com/<TWITTER_USER>"

  spec.platform = :ios, "12.1.4"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/djrlj694/ResourceKit.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "ResourceKit/**/*.{h,swift}"
end
