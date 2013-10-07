# Setup SSL
template "postgresql_ssl" do
	path "/tmp/postgresql_ssl"
	owner "root"
	group "root"
	mode 0755
	action :create
end

execute "setup_postgresql_ssl" do
	user "root"
	command "/tmp/postgresql_ssl"
	action :run
end