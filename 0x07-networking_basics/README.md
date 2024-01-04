# 0x07. Networking basics #0
~ OSI Model
It is Open Systems Interconnection model.
It is a conceptual model that provides a common basis for the coordination of standards development for the purpose of systems interconnection.
Made up of seven different abstract layers:
		* 7. Application layer
		* 6. Presentation layer
		* 5. Session layer
		* 4. Transport layer
		* 3. Network layer
		* 2. Data link layer
		* 1. Physical layer
This model partitions flow of data in communication systems. Each intermediate layer serves a class of functionality to the layer above it and is served by the layer below it.
Each layer has well-defined functions, and the methods of each layer communicate and interact with those of the layers immediately above and below as appropriate.
* Physical layer
Transmission and reception of raw bit streams over a physical medium.
A physical medium can be network interface controller, Ethernet hub or network switch.
Layer specifications define xtics such as voltage levels, voltage changes timings, physical data rates, distance for maximum transmission etc
Common problems related to physical layer are often incorrect media termination, EMI or noise scrambling and NICs and hubs that are misconfigured or do not work correctly.
* Data link layer
Transmission of data frames between two nodes connected by a physical layer. IEEE 802 divides the data link layer into two sublayers:
MAC - Medium access control - responsible for controlling how devices in a network gain access to a medium and permission to transmit data.
LLC - Logical link control - responsible for identifying and encapsulating network layer protocols, and controls error checking and frame synchronization.
802.3 Ethernet
802.11 Wi-Fi
802.15.4 Zigbee
All the above operate at the data link layer
* Network layer
Protocols involved are:
packet switching
routing protocols

The network layer provides the functional and procedural means of transferring packets from one node to another connected in "different networks". 
A network is a medium to which many nodes can be connected, on which every node has an address and which permits nodes connected to it to transfer messages to other nodes connected to it by merely providing the content of a message and the address of the destination node and letting the network find the way to deliver the message to the destination node, possibly routing it through intermediate nodes. 
If the message is too large to be transmitted from one node to another on the data link layer between those nodes, the network may implement message delivery by splitting the message into several fragments at one node, sending the fragments independently, and reassembling the fragments at another node.
It may, but does not need to, report delivery errors.
In summary network layer is responsible for structuring and managing a multi-node network, including addressing, routing and traffic control.
* Transport layer
Protocols involved are:
Segment and Datagram
Responsible for reliable transmission of data segments between points on a network, including segmentation, acknowledgement and multiplexing.
Transport protocols may be connection-oriented or connectionless.
Connection-oriented protocols include TCp(Transmission Control Protocol) and UDP(User Datagram Protocol)
* Session Layer
Responsible for managing communication sessions i.e continous exchange of information in the form of multiple back-and-forth transmissions between two nodes.
The session layer creates the setup, controls the connections, and ends the teardown, between two or more computers, which is called a "session".
Since DNS and other Name Resolution Protocols operate in this part of the layer, common functions of the session layer include user logon (establishment), name lookup (management), and user logoff (termination) functions.
Including this matter, authentication protocols are also built into most client software, such as FTP Client and NFS Client for Microsoft Networks.
Therefore, the session layer establishes, manages and terminates the connections between the local and remote application.
The session layer also provides for full-duplex, half-duplex, or simplex operation, and establishes procedures for checkpointing, suspending, restarting, and terminating a session between two related streams of data, such as an audio and a video stream in a web-conferencing application.
* Presentation layer
Translation of data between a networking service and an application; including character encoding, data compressing and encryption/decryption
* Application layer
High-level protocols such as resource sharing or remote file access e.g HTTP, FTP, SMTP
It is the layer closests to the end user.
Examples:
1. File explorer
2. Microsoft word
3. Web browsers
4. Email Programs
# Different types of network
A common way of differentiating types of computer network is by the scope or scale of the network.
# Area networks
* LAN: Local Area Network - Interconnects computers within a limited area such as residence, school, laboratory
* WAN: Wide Area Network(Ethernet and WiFi)
* WLAN: Wireless Local Area Network
* MAN: Metropolitan Area Network
* SAN: Storage Area Network
* CAN: Campus Area Network, Controller Area Network, Cluster Area Network
* PAN: Personal Area Network


