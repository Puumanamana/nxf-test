nextflow.enable.dsl = 2

process TO_TOWER {
    container "us-docker.pkg.dev/rome-pipeline-engine/nxf-container-repo/cedric-tw-cli"

    input:
    path metadata
    
    script:
    """
    #!/usr/bin/env bash
    tw datasets update -n test -f $params.csv
    """
}


workflow {
    TO_TOWER(
        file(params.csv, checkIfExists: true)
    )
}
