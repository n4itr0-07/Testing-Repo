use pnet::datalink::{self, NetworkInterface};
use pnet::packet::{Packet};
use pnet::packet::ethernet::EthernetPacket;
use pnet::packet::ip::IpNextHeaderProtocols;
use pnet::packet::ipv4::Ipv4Packet;
use pnet::packet::tcp::TcpPacket;
use pnet::packet::udp::UdpPacket;
use std::env;
use std::process;
use std::time::SystemTime;

// Scary ASCII Banner Function
fn print_banner() {
    let banner = r#"
                  ______    _____    _____ 
                 (      )  (     )  (     )
                 | (_)  | | | | | | | (_)
                 |  ___  | | (_) | | ___  
                 | |   | | | | | | | | | 
                 | |   | | | | | | | | | 
                 (_)   (_) (_) (_) (_) (_)

                 -= Grim Network Sniffer =-
                      * Beware the Packets *
                      *   Only the Brave   *
    "#;
    println!("{}", banner);
}

// Packet handling function
fn handle_packet(interface: &NetworkInterface, packet: &[u8]) {
    let ethernet = EthernetPacket::new(packet).unwrap();

    if let Some(ip_packet) = Ipv4Packet::new(ethernet.payload()) {
        let src_ip = ip_packet.get_source();
        let dst_ip = ip_packet.get_destination();
        println!("\n[*] Packet Captured at {:?}", SystemTime::now());

        match ip_packet.get_next_level_protocol() {
            IpNextHeaderProtocols::Tcp => {
                if let Some(tcp) = TcpPacket::new(ip_packet.payload()) {
                    println!(
                        "[+] TCP Packet: {}:{} -> {}:{}",
                        src_ip,
                        tcp.get_source(),
                        dst_ip,
                        tcp.get_destination()
                    );
                }
            }
            IpNextHeaderProtocols::Udp => {
                if let Some(udp) = UdpPacket::new(ip_packet.payload()) {
                    println!(
                        "[+] UDP Packet: {}:{} -> {}:{}",
                        src_ip,
                        udp.get_source(),
                        dst_ip,
                        udp.get_destination()
                    );
                }
            }
            _ => println!("[!] Unsupported Protocol Detected"),
        }
    }
}

// Main function to set up interface and packet listener
fn main() {
    print_banner();
    let interfaces = datalink::interfaces();
    let interface_name = env::args().nth(1).unwrap_or_else(|| {
        println!("Usage: {} <network interface>", env::args().nth(0).unwrap());
        process::exit(1);
    });

    let interface = interfaces
        .into_iter()
        .find(|iface| iface.name == interface_name)
        .expect("Error: Network interface not found");

    println!("[*] Starting packet sniffing on interface: {}", interface_name);

    let (_, mut rx) = match datalink::channel(&interface, Default::default()) {
        Ok(datalink::Channel::Ethernet(_, rx)) => (rx),
        _ => panic!("Error: Failed to create datalink channel."),
    };

    // Capture packets
    loop {
        match rx.next() {
            Ok(packet) => handle_packet(&interface, packet),
            Err(e) => eprintln!("Error: Failed to receive packet: {}", e),
        }
    }
}
