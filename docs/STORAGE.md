## Persistent storage

Setting persistent storage with Longhorn for Prometheus logs and other stuff. 

```bash
ok: [ziqqnode00] => {
    "shell_info.stdout_lines": [
        "NAME        FSTYPE   FSVER LABEL       UUID                                 FSAVAIL FSUSE% MOUNTPOINTS",
        "loop0       squashfs 4.0                                                          0   100% /snap/snapd/21761",
        "loop1       squashfs 4.0                                                          0   100% /snap/snapd/23546",
        "mmcblk0                                                                                    ",
        "├─mmcblk0p1 vfat     FAT32 system-boot 306B-9693                             323.2M    36% /boot/firmware",
        "└─mmcblk0p2 ext4     1.0   writable    5c5a44bd-f1a2-4f16-a2e8-89a3f10f2eb5   51.2G     7% /"
    ]
}
ok: [ziqqnode01] => {
    "shell_info.stdout_lines": [
        "NAME                      FSTYPE      FSVER    LABEL UUID                                   FSAVAIL FSUSE% MOUNTPOINTS",
        "nvme0n1                                                                                                    ",
        "├─nvme0n1p1               vfat        FAT32          07F3-D6D2                                   1G     1% /boot/efi",
        "├─nvme0n1p2               ext4        1.0            5910c39a-d645-486c-b35a-d98aeef7eabb      1.6G     9% /boot",
        "└─nvme0n1p3               LVM2_member LVM2 001       xYY0cI-a1N9-FAcr-YU6c-3QD0-QLmF-1LMmTx                ",
        "  ├─ubuntu--vg-ubuntu--lv ext4        1.0            9f62b32e-5eb4-4969-9623-10bfb39d4908     84.5G     9% /",
        "  └─ubuntu--vg-lv--0      ext4        1.0            8b2dd2b5-2742-42dd-a3af-505daaff0436    125.4G     0% /home"
    ]
}
ok: [ziqqnode02] => {
    "shell_info.stdout_lines": [
        "NAME                      FSTYPE      FSVER    LABEL UUID                                   FSAVAIL FSUSE% MOUNTPOINTS",
        "nvme0n1                                                                                                    ",
        "├─nvme0n1p1               vfat        FAT32          CD1E-7EC2                                   1G     1% /boot/efi",
        "├─nvme0n1p2               ext4        1.0            a2c668f5-0c98-4bfc-a43e-7cdc76b43ab5      1.6G     9% /boot",
        "└─nvme0n1p3               LVM2_member LVM2 001       jTqE7n-OGMo-D3CH-GWBa-p6WR-XHjO-eZd12q                ",
        "  ├─ubuntu--vg-ubuntu--lv ext4        1.0            e018c69b-a0c3-4114-87cd-e701886e5553     84.4G     9% /",
        "  └─ubuntu--vg-lv--0      ext4        1.0            ed8aa945-6994-47a2-8083-293dfeb39fbe    125.4G     0% /home"
    ]
}
```

[Back - Homepage](../README.md)