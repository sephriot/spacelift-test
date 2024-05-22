module "symlinked" {
  source = "./modules/symlinked"
}
output "module_password" {
  value = module.symlinked.password
  sensitive = false
}