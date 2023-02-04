nextflow.enable.dsl = 2

include {TO_TOWER} from './modules/to_tower/main.nf'

workflow {
    TO_TOWER(
        [[id: params.name, workspace: params.workspace], file(params.csv, checkIfExists: true)]
    )
}
