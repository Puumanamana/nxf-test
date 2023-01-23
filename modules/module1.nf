nextflow.enable.dsl = 2

workflow {
    Channel.of("a","b").view()
}
