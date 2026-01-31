class Profile < Formula
  desc "Workspace profile manager using direnv for environment-specific configurations"
  homepage "https://github.com/neverprepared/shell-profiler"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER" # darwin-amd64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/profile-v#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER" # linux-amd64
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
