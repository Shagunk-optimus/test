require 'net/ssh'
require 'net/scp'

fn = File.dirname(File.expand_path(__FILE__))

hostname = ENV["SERVER"]
username = "root"
password = "#m1rr0r"

Net::SSH.start(hostname, username, :password => password) do |ssh|
    ssh.exec!('service groundwork stop gwservices')
    ssh.scp.upload!(fn + '/monarch.sql','.')
    ssh.scp.upload!(fn + '/gwcollagedb.sql','.')
    ssh.exec!('export PGPASSWORD=123 && /usr/local/groundwork/postgresql/bin/psql monarch < monarch.sql')
    ssh.exec!('export PGPASSWORD=123 && /usr/local/groundwork/postgresql/bin/psql gwcollagedb < gwcollagedb.sql')
    ssh.exec!('rm /usr/local/groundwork/nagvis/etc/maps/*.cfg')
    maps = `ls scripts/net-ssh/maps/`
    maps.split.each do |map|
        ssh.scp.upload!(fn + '/maps/' + map,'/usr/local/groundwork/nagvis/etc/maps/' + map)
    end
    ssh.exec!('service groundwork start gwservices')
end
