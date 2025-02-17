diskpart
list disk
select disk 2
clean
create partition primary
list volume
select volume
format filesystem=fat32
label=myDisk
assign letter=e
