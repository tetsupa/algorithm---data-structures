require 'rspec'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
end

def irand_array(n, m)
  if m.zero?
    []
  else
    s = irand_array(n-1, m-1)
    t = rand(n+1)
    s.concat s.include?(t) ? [n] : [t]
  end
end
