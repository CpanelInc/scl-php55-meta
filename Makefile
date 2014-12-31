all:
	git clean -dxf
	mock -v -r ea4-php55-cent6-x86_64 --clean
	mock -v -r ea4-php55-cent6-x86_64 -D "scl php55" --unpriv --resultdir SRPMS --buildsrpm --spec SPECS/php55.spec --sources SOURCES
	mock -v -r ea4-php55-cent6-x86_64 -D "scl php55" -D "runselftest 0" --unpriv --resultdir RPMS SRPMS/php55-1.1-6.el6.src.rpm
