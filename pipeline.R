

con <- pipelineR::connect_db()

message("Starting the pipeline...")

pipelineR::start_pipeline(
	from = Sys.Date() - 5,
	to = Sys.Date(),
	batch_size = 100
)