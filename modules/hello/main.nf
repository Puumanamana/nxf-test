nextflow.enable.dsl = 2

process TO_TOWER {
    container "us-docker.pkg.dev/rome-internal-data/rome-container-repo/cedric-tw-cli"

    input:
    path metadata
    
    script:
    """
    tw datasets update -n $params.csv -f $metadata
    """
}


workflow {
    TO_TOWER(
        file(params.csv, checkIfExists: true)
    )
}
