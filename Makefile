#
#
#

up:
	vagrant up

destroy:
	vagrant destroy -f

cleanup:
	-rm -f *.log join.sh
	-rm -rf .vagrant

rebuild-node-1:
	vagrant reload node-1 --provision

tmp/kubeconfig.yaml:
	mkdir -p tmp
	vagrant scp k8s-master:.kube/config tmp/kubeconfig.yaml
