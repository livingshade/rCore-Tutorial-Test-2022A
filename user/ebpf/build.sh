
set -x
set -e

builddir="/home/lbr/rCore-Tutorial-Code-2022A/user/build"
cur=$(pwd)

if ! command -v clang-12 &> /dev/null
then
    echo "clang-12 could not be found"
    exit -1
fi

pushd ./kern
make
popd 

pushd ./user
make all
popd

progs=("naivetest" "maptest" "kernmaptest" "loadprogextest")
objcopy="riscv64-unknown-elf-objcopy"

for i in ${progs[@]};
do
    echo "cp ./user/${i}.o ${builddir}/elf/ebpf_${i}.elf"
    touch "${builddir}/app/ebpf_${i}.rs"
    cp "./user/${i}.o" "${builddir}/elf/ebpf_${i}.elf"
done


exit 0