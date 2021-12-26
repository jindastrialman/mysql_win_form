# core dotnet dont have windows form on linux, so I use mono

form_compile:
	mcs ch_src/form/main.cs -r:System.Windows.Forms.dll \
							-r:System.Drawing.dll \
							-r:System.Configuration.dll \
							-r:references/mysql/net5.0/MySql.Data.dll \
							-OUT:form.exe;

form_startup:
	mono form.exe

initialize_tables:
	mcs ch_src/init/initialize.cs -r:references/mysql/net5.0/MySql.Data.dll
	mono ch_src/init/initialize.exe
	rm ch_src/init/initialize.exe

clear:
	rm *.exe