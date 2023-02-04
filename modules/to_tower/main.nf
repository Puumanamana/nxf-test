process TO_TOWER {
    container "us-docker.pkg.dev/rome-pipeline-engine/nxf-container-repo/cedric-tw-cli"

    input:
    tuple val(name), path(metadata)
    
    script:
    """
    tw datasets update -n $name -f $metadata
    """
}
