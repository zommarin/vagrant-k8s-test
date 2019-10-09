#
#
#

up:
	vagrant up

destroy:
	vagrant destroy -f

cleanup:
	-rm -f *.log join.sh .vagrant
