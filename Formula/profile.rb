class Profile < Formula
  desc "Workspace profile manager using direnv for environment-specific configurations"
  homepage "https://github.com/neverprepared/shell-profiler"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-darwin-arm64.tar.gz"
      sha256 "37787faa67c5bdbd0298a357a4cca673ca93bddc595c62a176ab3dcc2d2a7997" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-darwin-amd64.tar.gz"
      sha256 "7c7f6ac058a8b279e995db329589f63c0030fc294108ab98e412dcad46134399" # darwin-amd64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-linux-arm64.tar.gz"
      sha256 "082bd921c1ff7c77d1e64b4327a002a6da20f827c9df490fc2fbf3c61d9e1f34" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-linux-amd64.tar.gz"
      sha256 "0aca152a8a87552421774ae495c081f24f363526101a5deedcce1eb398864ea1" # linux-amd64
    end
  end

  depends_on "direnv"

  def install
    bin.install "profile"
  end

  test do
    assert_match "Workspace Profile Manager", shell_output("#{bin}/profile help")
  end
end
