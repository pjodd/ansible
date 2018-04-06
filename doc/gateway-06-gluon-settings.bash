uci set fastd.mesh_vpn_backbone_peer_gw06=peer
uci set fastd.mesh_vpn_backbone_peer_gw06.net='mesh_vpn'
uci set fastd.mesh_vpn_backbone_peer_gw06.remote='ipv4 "198.167.222.6" port 10006'
uci set fastd.mesh_vpn_backbone_peer_gw06.group='mesh_vpn_backbone'
uci set fastd.mesh_vpn_backbone_peer_gw06.enabled='1'
uci set fastd.mesh_vpn_backbone_peer_gw06.key='1878415e6b1a99d6de444d41a3df69c42e3a8e21d071a73e8138f08c57393697'
uci commit
/etc/init.d/fastd restart
