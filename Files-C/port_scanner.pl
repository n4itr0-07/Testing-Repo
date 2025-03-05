#!/usr/bin/perl
use strict;    # Enables strict mode to enforce good programming practices
use warnings;  # Shows warnings for potential issues
use IO::Socket;  # Import the IO::Socket module for network operations

# Usage: ./port_scanner.pl <IP> <start_port> <end_port>
# Example: ./port_scanner.pl 192.168.1.1 20 1024
if (@ARGV != 3) {
    die "Usage: $0 <IP> <start_port> <end_port>\n";
}

# Assign command line arguments to variables
my ($host, $start_port, $end_port) = @ARGV;

# Check if the given ports are valid numbers
if ($start_port !~ /^\d+$/ || $end_port !~ /^\d+$/) {
    die "Start and end ports must be valid numbers.\n";
}

# Ensure the start port is less than or equal to the end port
if ($start_port > $end_port) {
    die "Start port cannot be greater than end port.\n";
}

# Function to scan a single port on the target host
sub scan_port {
    my ($host, $port) = @_;
    
    # Create a socket connection to the target host on the given port
    my $socket = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto    => 'tcp',   # Use TCP protocol
        Timeout  => 1        # Set a 1 second timeout for connections
    );
    
    # Check if the connection was successful
    if ($socket) {
        print "Port $port is open.\n";
        close($socket);  # Close the socket after use
    } else {
        # If the connection fails, the port is likely closed or filtered
        print "Port $port is closed or filtered.\n";
    }
}

# Iterate through the specified range of ports and scan each one
for my $port ($start_port..$end_port) {
    print "Scanning port $port...\n";
    scan_port($host, $port);  # Call the port scanning function
}
