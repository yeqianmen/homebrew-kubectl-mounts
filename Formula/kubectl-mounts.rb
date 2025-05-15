# Formula/kubectl-mounts.rb
class KubectlMounts < Formula
  desc "Show Pod Volumes and VolumeMounts in the cluster"
  homepage "https://github.com/yeqianmen/kubectl-mounts"
  version "v0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.5/kubectl-mounts_darwin_amd64.tar.gz"
      sha256 "b340ffffbbd49371dce5c49b044e81972666a8a372d4e091e453b54eb2fe81e3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/yeqianmen/kubectl-mounts/releases/download/v0.0.5/kubectl-mounts_darwin_arm64.tar.gz"
      sha256 "1655b716a5c0bd90aa6afca49bbfcabfeb04eb30b7c43dadfe188f215093a9ce"
    end
  end

 def install
    bin.install "kubectl-mounts"
  end

  test do
    system "#{bin}/kubectl-mounts", "--version"
  end
end
