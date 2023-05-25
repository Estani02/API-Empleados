# Creación de departamentos
puts "Departamentos creados correctamente ✨✨."
marketing = Department.create(name: "Marketing")
ventas = Department.create(name: "Ventas")
contabilidad = Department.create(name: "Contabilidad")
recursos_humanos = Department.create(name: "Recursos Humanos")

# Creación de cargos
puts "Cargos creados correctamente ✨✨."
gerente_marketing = Position.create(name: "Gerente de Marketing", department: marketing)
ejecutivo_ventas = Position.create(name: "Ejecutivo de Ventas", department: ventas)
contador = Position.create(name: "Contador", department: contabilidad)
analista_rrhh = Position.create(name: "Analista de Recursos Humanos", department: recursos_humanos)

# Creación de empleados
puts "Empleados creados correctamente ✨✨."
juan_perez = Employee.create(name: "Juan Pérez", position: gerente_marketing)
maria_gomez = Employee.create(name: "María Gómez", position: ejecutivo_ventas)
pedro_rodriguez = Employee.create(name: "Pedro Rodríguez", position: contador)
laura_gonzalez = Employee.create(name: "Laura González", position: analista_rrhh)

# Creación de historial laboral
puts "Historial laboral creados correctamente ✨✨."
EmploymentHistory.create(employee: juan_perez, company: "ABC Company", start_date: Date.new(2015, 6, 1), end_date: Date.new(2019, 12, 31))
EmploymentHistory.create(employee: maria_gomez, company: "XYZ Agency", start_date: Date.new(2017, 3, 15), end_date: Date.new(2022, 9, 30))
EmploymentHistory.create(employee: pedro_rodriguez, company: "XYZ Accounting Services", start_date: Date.new(2016, 9, 1), end_date: Date.new(2022, 3, 31))
EmploymentHistory.create(employee: laura_gonzalez, company: "ABC HR Solutions", start_date: Date.new(2018, 4, 15), end_date: Date.new(2023, 6, 30))

# Creación de capacitaciones
puts "Capacitaciones creados correctamente ✨✨."
Training.create(employee: juan_perez, name: "Marketing Digital", description: "Curso avanzado de marketing digital")
Training.create(employee: maria_gomez, name: "Técnicas de venta", description: "Entrenamiento en técnicas de venta efectivas")
Training.create(employee: pedro_rodriguez, name: "Contabilidad Avanzada", description: "Curso especializado en contabilidad avanzada")
Training.create(employee: laura_gonzalez, name: "Gestión del Talento", description: "Taller de gestión y desarrollo del talento humano")


