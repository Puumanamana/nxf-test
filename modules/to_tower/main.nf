process TO_TOWER {
    container "us-docker.pkg.dev/rome-pipeline-engine/nxf-container-repo/cedric-tw-cli"

    input:
    tuple val(meta), path(dataset)
    
    script:
    """
    tw datasets update -w $meta.workspace -n $meta.id -f $dataset
    """
}
