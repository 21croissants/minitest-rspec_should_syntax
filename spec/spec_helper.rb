require 'minitest/spec'
require 'turn'

Turn.config do |c|
  # use one of output formats:
  # :outline  - turn's original case/test outline mode [default]
  # :progress - indicates progress with progress bar
  # :dotted   - test/unit's traditional dot-progress mode
  # :pretty   - new pretty reporter
  # :marshal  - dump output as YAML (normal run mode only)
  # :cue      - interactive testing
  c.format  = :outline

  c.trace   = 5 # number of lines, enable full backtrace
  c.natural = true # use humanized test names (works only with :outline format)
  c.ansi = true # colors
end

MiniTest::Unit.autorun
