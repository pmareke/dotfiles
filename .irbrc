# frozen_string_literal: true

# gem install reline
require 'reline'

Reline::Face.config(:completion_dialog) do |conf|
  conf.define(:default, foreground: '#f8f8f2', background: '#000000')
  conf.define(:enhanced, foreground: '#f8f8f2', background: '#000000')
end

IRB.conf[:PROMPT_MODE] = :SIMPLE

# Clear the screen
def clear
  system 'clear'
end

# Shortcuts
alias c clear
alias x exit
