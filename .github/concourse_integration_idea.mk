# We want to have a make target that generates the following rabbitmq-server-verified-deps.mk file:

dep_rabbitmq_codegen = git https://github.com/rabbitmq/rabbitmq-codegen.git 532ff14f595cf8fc19201085d4cdda4b7ed36e38
dep_rabbit_common = git https://github.com/rabbitmq/rabbitmq-common.git 532ff14f595cf8fc19201085d4cdda4b7ed36e38
dep_rabbitmq_erlang_client = git https://github.com/rabbitmq/rabbitmq-erlang-client.git 532ff14f595cf8fc19201085d4cdda4b7ed36e38
dep_rabbitmq_cli = git https://github.com/rabbitmq/rabbitmq-cli.git 532ff14f595cf8fc19201085d4cdda4b7ed36e38

# This file will be committed to the existing repository in a way that doesn't trigger a GitHub Actions run - is this possible?
# When Concourse picks up this commit, the first thing that happens is a verification that all other inputs are at the same version as captured in this files.
# If they are, the job succeeds and the pipeline continues.
# If they are not, the job fails.
