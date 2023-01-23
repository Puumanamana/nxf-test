nextflow.enable.dsl = 2

workflow {
    Channel.of(1, 2, 3).view()
}
