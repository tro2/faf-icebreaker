drop index unique_host_port on turn_servers;

alter table turn_servers
    drop column port;

alter table turn_servers
    add stun_port mediumint default 3478 null after host,
    add turn_udp_port mediumint default 3478 null after stun_port,
    add turn_tcp_port mediumint default 3478 null after turn_udp_port,
    add turns_tcp_port mediumint default null null after turn_tcp_port;
