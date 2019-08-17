#pragma.template metapacket
---
meta:
  id: loginservice_server_packet
  title: LoginService Server Packets
  encoding: ASCII
  endian: le
  imports:
    - '0001'

seq:
  - id: packet_id
    type: u2
  - id: data
    type:
      switch-on: packet_id
      cases:
        0x0001: loginservice_server_0001_login