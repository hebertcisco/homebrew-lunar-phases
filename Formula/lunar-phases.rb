class LunarPhases < Formula
  desc "Dependency-free C11 CLI for lunar position, illumination, and phase times"
  homepage "https://github.com/hebertcisco/lunar-phases"
  url "https://github.com/hebertcisco/lunar-phases/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build", "--parallel"
    system "cmake", "--install", "build"
  end

  test do
    output = shell_output("#{bin}/lunar_phases phases 2026")
    assert_match "Lunar phases in 2026", output
    assert_match "New Moon", output
  end
end
