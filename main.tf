module "storage" {
  source = "./modules/storage"
  airflow_rg_name="${var.airflow_rg_name}"
  airflow_sablob_name="${var.airflow_sablob_name}"
}
#module "compute-engine" {
#  source = "./modules/compute-engine"
#}  
#module "sqlserver" {
#  source = "./modules/sqlserver"
#  airflow_rg_name="${var.airflow_rg_name}"
#  airflow_sa_name="${var.airflow_sa_name}"
#  airflow_sqls_name="${var.airflow_sqls_name}"
#  airflow_sqls_dbname="${var.airflow_sqls_dbname}"
#}
#module "cosmosdb" {
# # source = "./modules/cosmosdb"
#}
