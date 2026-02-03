class ShellProfiler < Formula
  desc "Workspace profile manager using direnv for environment-specific configurations"
  homepage "https://github.com/neverprepared/shell-profiler"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/shell-profiler-v#{version}-darwin-arm64.tar.gz"
      sha256 "cba7d35494d481b7bab6b0df13be66b5a1f2fe0b80f7ecca249f7cb021ba578c" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/shell-profiler-v#{version}-darwin-amd64.tar.gz"
      sha256 "48d0ce16770d8984bda33e39336dd9c89ceb3fdccfad9a66266f963fe2866b3d" # darwin-amd64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/shell-profiler-v#{version}-linux-arm64.tar.gz"
      sha256 "50d23b57f44ec34620d250c9941ff159b3978e923ae99cc7b71ae72682a2cbf8" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/shell-profiler/releases/download/v#{version}/shell-profiler-v#{version}-linux-amd64.tar.gz"
      sha256 "54b60788a8ee4e76822f79fadf37f8bc20da859d0f6478f8a9006978a330a7b7" # linux-amd64
    end
  end

  depends_on "direnv"

  def install
    bin.install "shell-profiler"
  end

  test do
    assert_match "Workspace Profile Manager", shell_output("#{bin}/shell-profiler help")
  end
end
