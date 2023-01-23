nextflow.enable.dsl = 2

workflow {
    Channel.of(params.x).view()
}
