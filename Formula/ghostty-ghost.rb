# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GhosttyGhost < Formula
  desc "A tool to convert terminal configs to Ghostty"
  homepage "https://github.com/gambithunt/ghostty-ghost"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gambithunt/ghostty-ghost/releases/download/v1.0.8/ghostty-ghost_darwin_amd64.tar.gz"
      sha256 "444f9fb50d01e5a0b39183510b720cecab7b4f0bb0ead27e8792dcdb1e0e1a0f"

      def install
        bin.install Dir["ghostty-ghost_*"].first => "ghostty-ghost"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gambithunt/ghostty-ghost/releases/download/v1.0.8/ghostty-ghost_darwin_arm64.tar.gz"
      sha256 "156c70717552806518f740208a6ac342ca9b47e33e209a43c38cc3cc0f3b4834"

      def install
        bin.install Dir["ghostty-ghost_*"].first => "ghostty-ghost"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gambithunt/ghostty-ghost/releases/download/v1.0.8/ghostty-ghost_linux_amd64.tar.gz"
        sha256 "e4c1afd0e3258f8ff5f721ca586967abcd4d9daa31c53a7dcb2491f445efb920"

        def install
          bin.install Dir["ghostty-ghost_*"].first => "ghostty-ghost"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gambithunt/ghostty-ghost/releases/download/v1.0.8/ghostty-ghost_linux_arm64.tar.gz"
        sha256 "685009bed62691941e25dd263a8b07c2f6c83b41b959a4f286b086abc3ca8c3e"

        def install
          bin.install Dir["ghostty-ghost_*"].first => "ghostty-ghost"
        end
      end
    end
  end

  test do
    system "#{bin}/ghostty-ghost --version"
  end
end
