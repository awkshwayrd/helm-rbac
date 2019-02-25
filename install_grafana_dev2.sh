helm install --name grafana \
stable/grafana \
--tiller-namespace dev2 \
--kubeconfig config \
--namespace dev2 \
--set rbac.pspEnabled=false \
--set rbac.create=false

