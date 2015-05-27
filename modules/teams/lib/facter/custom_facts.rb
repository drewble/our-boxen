# need to export FACTERLIB='/opt/boxen/repo/modules/team/lib/facter/'

ENV.each do |k,v|
  Facter.add(k) do
    setcode do
      v
    end
  end
end
