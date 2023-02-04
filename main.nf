nextflow.enable.dsl = 2

include {TO_TOWER} from './modules/to_tower/main.nf'

workflow {
    TO_TOWER(
        ["ds-test", file(params.csv, checkIfExists: true)]
    )
}
