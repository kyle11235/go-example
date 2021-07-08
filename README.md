- go

        - guide

                https://www.jfrog.com/confluence/display/JFROG/Go+Registry
                https://www.jfrog.com/confluence/display/CLI/CLI+for+JFrog+Artifactory#CLIforJFrogArtifactory-BuildingGoPackages

        - config

                - repo
                
                        go-remote = https://goproxy.cn or https://github.com/ ...
                        go-virtual = go-dev-local + go-remote

                - resolve by jfrog cli

                        cd go-example
                        jfrog rt go-config --server-id-resolve art1 --repo-resolve go-virtual

                - resolve by go proxy

                        export GOPROXY="http://kyle:$ART_API_KEY@182.92.214.141:8081/artifactory/api/go/go-virtual"

        - test

                - build by jfrog cli
                
                        jfrog rt go build

                - build by go
                
                        go build

                - deploy
                
                        jfrog rt gp go-virtual 0.0.1 --server-id art1
