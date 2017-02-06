#!usr/bin/ruby

dicc = {}
f1 = File.readlines('/etc/passwd')
f1.each {|passwd| linea =  passwd.split(":") ; dicc.store(linea.first, linea.last)}
usuarios = ['root', 'imaginario']
usuarios.each {|u| puts "Usuario #{u} con shell --> #{dicc[u]}" if dicc.has_key?(u)}
#si no existe key ruby arroja nil, no error
