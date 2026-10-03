class Photoc < Formula
  desc "Command-line tools for managing photos"
  homepage "https://github.com/ahmetomerv/photoc"
  url "https://github.com/ahmetomerv/photoc/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "d63383d580df5c5ec22e77748b8327b2726b82ce98eaebe4734a96a909fa6b5a"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "jpeg-turbo"
  depends_on "libexif"
  depends_on "libxml2"

  def install
    system "cmake", "-S", ".", "-B", "build",
           "-DBUILD_TESTING=OFF", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    bash_completion.install "completions/bash/photoc"
    fish_completion.install "completions/fish/photoc.fish"
    zsh_completion.install "completions/zsh/_photoc"
  end

  test do
    assert_match "photoc #{version}", shell_output("#{bin}/photoc --version")
  end
end
