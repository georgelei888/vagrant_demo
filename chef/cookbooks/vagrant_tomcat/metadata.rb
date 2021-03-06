name  'vagrant_tomcat'
maintainer  'George'
maintainer_email  'gle@storm8.com'
license 'Apache 2.0'
description 'Customizes Tomcat-Latest Cookbook for Vagrant'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'

depends 'java'
depends 'tomcat_latest'

supports  'centos'

recipe 'vagrant_tomcat::default', 'Updates Tomcat installation'
