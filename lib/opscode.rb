require "opscode/version"

module Opscode

  class CLI

    attr_reader :argv

    def initialize(argv, opts = {})
      @stdout_io = opts[:stdout_io] || $stdout
      @scm = opts[:scm] || "git"
      @argv = Array(argv)
    end

    def run
      case argv.first
      when "version", "--version", "-v", "-version"
        stdout_io.puts "Opscode version #{Opscode::VERSION}"
      else
        exec(scm, *argv)
      end
    end

    private

    attr_reader :stdout_io, :scm
  end
end
