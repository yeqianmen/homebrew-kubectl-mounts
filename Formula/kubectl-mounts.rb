# Formula/kubectl-mounts.rb
class Kubectl-mounts < Formula
  desc "Show Pod Volumes and VolumeMounts in the cluster"
  homepage "https://github.com/yeqianmen/kubectl-mounts"
  version "v0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.4/kubectl-mounts_darwin_amd64" 
      sha256 "17d07778bb0ab7ff1ce38499ec3a70cffa395a0af86a51d4b1658e17b415d3c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.4/kubectl-mounts_darwin_arm64"
      sha256 "998c8cfd7707e2ed46b35397bd8e1ab0999b39ecab65325275ce9873fdb19fc8"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "kubectl-mounts-x86_64-apple-darwin" => "kubectl-mounts"
    elsif Hardware::CPU.arm?
      bin.install "kubectl-mounts-aarch64-apple-darwin" => "kubectl-mounts"
    end
  end

  test do
    system "#{bin}/kubectl-mounts", "--version"
  end
end
