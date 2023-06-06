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

EmploymentHistory.create([
  { employee: juan_perez, company: "ABC Company", start_date: Date.new(2015, 6, 1), end_date: Date.new(2019, 12, 31) },
  { employee: juan_perez, company: "Henry", start_date: Date.new(2020, 8, 11), end_date: Date.new(2020, 12, 30) },
  { employee: juan_perez, company: "ISOW", start_date: Date.new(2022, 10, 1) },
  { employee: maria_gomez, company: "ZOCO", start_date: Date.new(2021, 6, 1), end_date: Date.new(2023, 2, 5) },
  { employee: maria_gomez, company: "Coderhouse", start_date: Date.new(2023, 7, 20) },
  { employee: pedro_rodriguez, company: "Disco", start_date: Date.new(2023, 1, 1)},
  { employee: pedro_rodriguez, company: "Solaz SA", start_date: Date.new(2015, 1, 1), end_date: Date.new(2019, 2, 4) },
  { employee: pedro_rodriguez, company: "Vans", start_date: Date.new(2019, 1, 1), end_date: Date.new(2020, 5, 7) },
  { employee: laura_gonzalez, company: "Ford", start_date: Date.new(2022, 1, 15) }
])

juan_perez.reload
maria_gomez.reload
pedro_rodriguez.reload
laura_gonzalez.reload

employees = [juan_perez, maria_gomez, pedro_rodriguez, laura_gonzalez]

employees_json = employees.map do |employee|
  history = employee.employment_histories.map do |employment_history|
    {
      name_company: employment_history.company,
      start_date: employment_history.start_date.to_s,
      end_date: employment_history.end_date&.to_s
    }
  end

  {
    id: employee.id,
    employee_id: employee.id,
    history: history
  }
end

# Creación de capacitaciones
puts "Capacitaciones creados correctamente ✨✨."
Training.create(employee: juan_perez, name: "Marketing Digital", description: "Curso avanzado de marketing digital")
Training.create(employee: maria_gomez, name: "Técnicas de venta", description: "Entrenamiento en técnicas de venta efectivas")
Training.create(employee: pedro_rodriguez, name: "Contabilidad Avanzada", description: "Curso especializado en contabilidad avanzada")
Training.create(employee: laura_gonzalez, name: "Gestión del Talento", description: "Taller de gestión y desarrollo del talento humano")

# Creación de cargos adicionales
puts "Creando cargos adicionales..."

# Generar nombres de cargos aleatorios
def generate_cargo_name
  prefixes = ["Asociado", "Especialista", "Senior", "Junior", "Experto"]
  titles = ["Desarrollo", "Investigación", "Operaciones", "Analítica", "Gestión"]
  suffixes = ["Técnico", "Administrativo", "Estratégico", "Comercial", "Financiero"]

  prefix = prefixes.sample
  title = titles.sample
  suffix = suffixes.sample

  "#{prefix} #{title} #{suffix}"
end

# Cargos adicionales para Marketing
4.times do
  Position.create(name: generate_cargo_name, department: marketing)
end

# Cargos adicionales para Ventas
4.times do
  Position.create(name: generate_cargo_name, department: ventas)
end

# Cargos adicionales para Contabilidad
4.times do
  Position.create(name: generate_cargo_name, department: contabilidad)
end

# Cargos adicionales para Recursos Humanos
4.times do
  Position.create(name: generate_cargo_name, department: recursos_humanos)
end

puts "Cargos adicionales creados correctamente ✨✨."


