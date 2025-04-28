#devtools::install_github("https://github.com/kengreklammen/jenkins_automation")
remotes::install_github("https://github.com/kengreklammen/jenkins_automation")
library(pipelineR)

con <- pipelineR::connect_db()

message("Starting the pipeline...")

pipelineR::start_pipeline(
	from = Sys.Date() - 5,
	to = Sys.Date(),
	batch_size = 100
)