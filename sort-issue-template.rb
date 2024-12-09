# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SortIssueTemplate < Formula
  desc "Create GitHub Issues from GitHub Discussions
"
  homepage "https://github.com/suzuki-shunsuke/sort-issue-template"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suzuki-shunsuke/sort-issue-template/releases/download/v0.1.0/sort-issue-template_darwin_amd64.tar.gz"
      sha256 "1a6c8d402af73f9df1cb20c2e5e994ce47dbc6bc1cf8fc9f45dd7eccf21f852a"

      def install
        bin.install "sort-issue-template"
        generate_completions_from_executable(bin/"sort-issue-template", "completion", shells: [:bash, :zsh, :fish])
      end
    end
    on_arm do
      url "https://github.com/suzuki-shunsuke/sort-issue-template/releases/download/v0.1.0/sort-issue-template_darwin_arm64.tar.gz"
      sha256 "35393e4f621b6634e082736acce0222fd8d3afafaf17eeb9febf70966c10f662"

      def install
        bin.install "sort-issue-template"
        generate_completions_from_executable(bin/"sort-issue-template", "completion", shells: [:bash, :zsh, :fish])
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/sort-issue-template/releases/download/v0.1.0/sort-issue-template_linux_amd64.tar.gz"
        sha256 "518acdd9214f3d0dba9395d8c217b493f43fd66aae6e0cab54dc4f5ce8e9c503"

        def install
          bin.install "sort-issue-template"
          generate_completions_from_executable(bin/"sort-issue-template", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/sort-issue-template/releases/download/v0.1.0/sort-issue-template_linux_arm64.tar.gz"
        sha256 "dd21dedff55b0d53ad38761dcab3ca55bce6acb8866be7a84aa564a5b079475f"

        def install
          bin.install "sort-issue-template"
          generate_completions_from_executable(bin/"sort-issue-template", "completion", shells: [:bash, :zsh, :fish])
        end
      end
    end
  end

  test do
    system "#{bin}/sort-issue-template --version"
  end
end