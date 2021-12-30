
build_path = build

.DEFAULT_GOAL := riscv32_9.3

mips-4.9_patched:
	mkdir -p $(build_path)/$@
	cp -f ./mips/build_mips_toolchain_4_9_patched $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_mips_toolchain_4_9_patched
	cd $(build_path)/$@ && ./build_mips_toolchain_4_9_patched 2>&1 | tee build.log

mips-9.3_patched:
	mkdir -p $(build_path)/$@
	cp -f ./mips/build_mips_toolchain_9_3_patched $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_mips_toolchain_9_3_patched
	cd $(build_path)/$@ && ./build_mips_toolchain_9_3_patched 2>&1 | tee build.log

mips-9.3:
	mkdir -p $(build_path)/$@
	cp -f ./mips/build_mips_toolchain_9_3 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_mips_toolchain_9_3
	cd $(build_path)/$@ && ./build_mips_toolchain_9_3 2>&1 | tee build.log

avr-9.4:
	mkdir -p $(build_path)/$@
	cp -f ./avr/build_avr_toolchain_9_4 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_avr_toolchain_9_4
	cd $(build_path)/$@ && ./build_avr_toolchain_9_4 2>&1 | tee build.log

riscv64_9.3:
	mkdir -p $(build_path)/$@
	cp -f ./riscv/build_riscv64_toolchain_9_3 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_riscv64_toolchain_9_3
	cd $(build_path)/$@ && ./build_riscv64_toolchain_9_3 2>&1 | tee build.log

riscv32_9.3:
	mkdir -p $(build_path)/$@
	cp -f ./riscv/build_riscv32_toolchain_9_3 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_riscv32_toolchain_9_3
	cd $(build_path)/$@ && ./build_riscv32_toolchain_9_3 2>&1 | tee build.log

arm-7.1:
	mkdir -p $(build_path)/$@
	cp -f ./arm/build_arm_toolchain_7_1 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_arm_toolchain_7_1
	cd $(build_path)/$@ && ./build_arm_toolchain_7_1 2>&1 | tee build.log

arm-9.4:
	mkdir -p $(build_path)/$@
	cp -f ./arm/build_arm_toolchain_9_4 $(build_path)/$@
	cp -f ./env.sh $(build_path)/$@
	cd $(build_path)/$@ && chmod +x build_arm_toolchain_9_4
	cd $(build_path)/$@ && ./build_arm_toolchain_9_4 2>&1 | tee build.log

all:
	make -s mips-4.9_patched || true
	make -s mips-9.3_patched || true
	make -s mips-9.3 || true
	make -s avr-9.4 || true
	make -s riscv64_9.3 || true
	make -s riscv32_9.3 || true
	make -s arm-7.1 || true
	make -s arm-9.4 || true

cleanall:
	rm -rf $(build_path)
