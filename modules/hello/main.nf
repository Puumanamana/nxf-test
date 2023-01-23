nextflow.enable.dsl = 2

workflow {
    Channel.of("hello", "bonjour").view()
}
