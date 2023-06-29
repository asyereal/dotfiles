timedatectl set-local-rtc 0 && systemctl enable --now systemd-timesyncd.service
sed -i 's/\#NTP=/NTP=0.arch.pool.ntp.org 1.arch.pool.ntp.org 2.arch.pool.ntp.org 3.arch.pool.ntp.org/g' /etc/systemd/timesyncd.conf
sed -i 's/\#FallbackNTP=0.arch.pool.ntp.org 1.arch.pool.ntp.org 2.arch.pool.ntp.org 3.arch.pool.ntp.org/FallbackNTP=3.my.pool.ntp.org 2.asia.pool.ntp.org 3.asia.pool.ntp.org/g' /etc/systemd/timesyncd.conf
timedatectl set-ntp true
