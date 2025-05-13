# Formula/kubectl-mounts.rb
class KubectlMounts < Formula
  desc "Show Pod Volumes and VolumeMounts in the cluster"
  homepage "https://github.com/yeqianmen/kubectl-mounts"
  version "v0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.4/kubectl-mounts_darwin_amd64.tar.gz"
      sha256 "74a8c3e5c44ad0ab44f0b3ae001e3bd3a87595fa916b22b785af44835e191774"
    end
    if Hardware::CPU.arm?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.4/kubectl-mounts_darwin_arm64.tar.gz"
      sha256 "dd6b762aea89c20bb337d7fa0ac8afc61aa3f25d88655ef663036e482aac8d34"
    end
  end

 def install
    bin.install "kubectl-mounts"
  end

  test do
    system "#{bin}/kubectl-mounts", "--version"
  end
end
