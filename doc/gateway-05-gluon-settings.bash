uci set fastd.mesh_vpn_backbone_peer_gw05=peer
uci set fastd.mesh_vpn_backbone_peer_gw05.net='mesh_vpn'
uci set fastd.mesh_vpn_backbone_peer_gw05.remote='ipv4 "198.167.222.5" port 10006'
uci set fastd.mesh_vpn_backbone_peer_gw05.group='mesh_vpn_backbone'
uci set fastd.mesh_vpn_backbone_peer_gw05.enabled='1'
uci set fastd.mesh_vpn_backbone_peer_gw05.key='37e385141d5007243b6dccd4a14f72ea04b99f2d6288bcb744b777e2cba0f7d0'
uci commit
/etc/init.d/fastd restart
