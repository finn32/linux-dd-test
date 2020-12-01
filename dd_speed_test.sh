#!/bin/bash
#edituj cestu ke svazku napr. svazek=/mnt/usbhdd
svazek=/mnt/usbhdd
#edituj cestu k ulozeni log - idealne jinam nez testujes
logy=/tmp/

echo "Zacatek $(date)" >> $logy/test_rychlosti.Test1.log
dd if=/dev/zero of=$svazek/tempfile.1G bs=1G count=10 2>> $logy/test_rychlosti.Test1.log
dd if=/dev/zero of=$svazek/tempfile.1M bs=1M count=10k 2>> $logy/test_rychlosti.Test1.log
dd if=/dev/zero of=$svazek/tempfile.1k bs=1k count=10M 2>> $logy/test_rychlosti.Test1.log
dd if=$svazek/tempfile.1G of=/dev/null bs=1G count=10 2>> $logy/test_rychlosti.Test1.log
dd if=$svazek/tempfile.1M of=/dev/null bs=1M count=10k 2>> $logy/test_rychlosti.Test1.log
dd if=$svazek/tempfile.1k of=/dev/null bs=1k count=10M 2>> $logy/test_rychlosti.Test1.log
echo "Konec $(date)" >> $logy/test_rychlosti.Test1.log
