nextflow.enable.dsl = 2

workflow {
    Channel.fromList(params.hellos).view()
}
