import time
from fabric.api import *
from fabric.contrib.files import *
from fabric.utils import *

env.keepalive = 10
env.shell = "/bin/bash -l -i -c"

build_host = 'morat'
bitsize = '64'
edition = 'groundworkenterprise'
user = 'root'
build_storage_dir = '/var/www/html/tools/DEVELOPMENT/builds/BitRock/6.0' # Daily Build directory on morat server
install_dir = '/usr/local/groundwork'
build_dir ='/qa' #The basic directory where this script and required folders are present.

def setup():
    if not exists(build_dir):
        run('mkdir -p ' + build_dir)

    run('rm -rf ' + build_dir + '/*')

def cleangwos():
    with settings(warn_only=True), cd(build_dir):
        run('service groundwork status')
        run(install_dir + '/uninstall --mode unattended')
        run('rm -f /tmp/bitrock_installer*')

        run('pkill -SIGKILL -u nagios')
        run('killall nagios')
        run('fuser -k -n tcp 80')
        run('killall -s 9 httpd')
        run('pkill -SIGKILL -u mysql')
        run('fuser -k -n tcp 3306')
        run('killall -s 9 postgres')
        run('pkill -SIGKILL perl.bin')

        run('userdel nagios')
        run('userdel mysql')
        run('userdel postgres')

        run('rm -rf ' + install_dir)

def download(version = "latest"):
        with cd(build_dir):

            if version == "latest":
                #latest
                filename = run('ssh ' + user + '@' + build_host + ' ls -c -t ' + build_storage_dir + '/ |grep ${edition}- |head -1')

                if not exists(filename):
                    run('scp ' + user + '@' + build_host + ':' + build_storage_dir + '/' + filename + ' ' + build_dir + '/' + filename)
                    run('chmod +x  ' + build_dir + '/' + filename)

            if version == "6.7":
                run('wget -N http://morat/build/builds/BitRock/6.0/groundworkenterprise-6.7.0-br287-gw1571-linux-64-installer.run')
            if version == "6.6.1":
                run('wget -N http://morat/build/builds/BitRock/6.0/groundworkenterprise-6.6.1-br254-gw1311-linux-64-installer.run')
            if version == "6.6":
                run('wget -N http://morat/build/releases/6_6_0/groundworkenterprise-6.6.0-br238-gw1248-linux-64-installer.bin')
            if version == "6.5":
                run('wget -N http://morat/build/releases/6_5/groundworkenterprise-6.5.0-br220-gw1197-linux-64-installer.bin')
            if version == "6.4":
                run('wget -N http://morat/build/releases/6_4/groundworkenterprise-6.4-br212-gw1035-linux-64-installer.bin')
            if version == "6.3":
                run('wget -N http://morat/build/releases/6_3/groundworkenterprise-6.3-br194-gw893-linux-64-installer.bin')

            run('chmod +x *')

def install(version = "latest"):
        with cd(build_dir):
            run('touch /tmp/gw-backup-20120827141505.tar.gz')
            if version == "latest":
                filename = run('ls -c -t | sort -r | grep ${edition}- |head -1')
                run('./' + filename + ' --mode unattended --postgres_password 123')
            else:
                filename = run('ls groundworkenterprise-' + version + '* |head -1')
                if (version >= '6.6'):
                    run('./' + filename + ' --mode unattended --postgres_password 123')
                elif (version < '6.6'):
                    run('./' + filename + ' --mode unattended --mysql_password 123')

            run('service groundwork status')

            time.sleep(60)
            jbosspid = run('ps -ef |grep -v grep|grep "jboss"|awk "{print $2}"')
            
            run('/usr/local/groundwork/foundation/feeder/find_cacti_graphs')
            run('service groundwork status')
#                abort

def uploadlatestbuild():
    download("latest")
    filename = run('ssh ' + user + '@' + build_host + ' ls -c -t ' + build_storage_dir + '/ |grep ${edition}- |head -1')
    if 's3://Groundwork/' + filename != run('s3cmd ls s3://Groundwork/' + filename + '| awk \'{print $4}\''):
        run('s3cmd put ' + build_dir + '/' + filename + ' s3://Groundwork/' + filename)
        run('s3cmd setacl --acl-public --recursive s3://Groundwork')
    else:
        print 'Build already in bucket'
