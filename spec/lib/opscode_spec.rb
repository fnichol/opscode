require "spec_helper"
require "stringio"

describe Opscode do

  it 'has a version number' do
    expect(Opscode::VERSION).not_to be nil
  end
end

describe Opscode::CLI do

  let(:io) { StringIO.new }

  it "#argv returns arguments" do
    expect(Opscode::CLI.new(%w{one two three}).argv).to eq(%w{one two three})
  end

  %w{version --version -v -version}.each do |arg|
    it "with argv '#{arg}' returns a version string" do
      Opscode::CLI.new([arg], stdout_io: io).run
      expect(io.string).to eq("Opscode version #{Opscode::VERSION}\n")
    end
  end

  it "with any other arguments delegate to the SCM tool" do
    cli = Opscode::CLI.new(%w{checkout mainline}, stdout_io: io, scm: "cvs")
    expect(cli).to receive(:exec).with("cvs", "checkout", "mainline")
    cli.run
  end

  it "scm tool defaults to git" do
    cli = Opscode::CLI.new(%w{log}, stdout_io: io)
    expect(cli).to receive(:exec).with("git", "log")
    cli.run
  end
end
