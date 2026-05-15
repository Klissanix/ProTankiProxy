# ProTanki Client-Server Interaction

Date: 2026-04-04

## Connection path
- Game registers scpacker.networking.Network as OSGi service.
- ClientConfigurator registers INetworkService via NetworkService(ConnectionParameters).
- Startup connector reads controlServerAddress/controlServerPorts and calls Network.connect(host, port).
- ConnectionParameters appends fallback host 194.67.196.216:25565.

## Wire format
- Transport: flash.net.Socket (TCP)
- Header size: 8 bytes
  - int32 headerWord
  - int32 packetId
- headerWord semantics:
  - 0x40 bit in highest byte -> payload compressed
  - low 24 bits -> total packet length (header + payload)
- payloadLength = totalLength - 8
- compressed payload uses deflate

## Outgoing packet construction
- Abstract packet writer serializes packetLength, packetId, and payload fields.
- Payload fields are encoded by registered codecs.
- Serialized payload passes through transport transformer.

## Transport transform stage
- Default mode: no-op transformer.
- Alternate mode: stateful byte-wise XOR transform from Vector<int> key material.
- Handshake packet id 2001736388 provides key vector and switches transformer mode.
- Locale packet id -1864333717 is sent after key init.

## Packet registry
- Packet factory maps packetId -> packet class prototype.
- Auto-extracted packet classes: 482
- Registry artifacts:
  - artifacts/swf/analysis/packet_map.csv
  - artifacts/swf/analysis/packet_map.json

## Resource URL path
- Resource URL is built as resourcesRootUrl + computed resource path.
- resourcesRootUrl comes from startup network parameters path.
