module "modulo_instancia" {
  source = "github.com/n4itsirc/mi_primer_modulo_de_la_vida"

  instance_name_var = "MyNewInstanceCS"
}

output "programa_principal" {
  value       =  module.modulo_instancia.instance_public_ip
}