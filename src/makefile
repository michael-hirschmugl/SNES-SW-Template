# Standard Build
template.smc: main.asm link
	../wla-dx/build/binaries/wla-65816 -v -o main.obj main.asm
	../wla-dx/build/binaries/wlalink -v link ../out/template.smc
	rm main.obj
	../bsnes-plus/bsnes/out/bsnes ../out/template.smc
	rm ../out/template.smc

# Release Build
release: main.asm link
	@echo "Building release version..."
	$(eval SMC_NAME := $(or $(NAME), release.smc))
	../wla-dx/build/binaries/wla-65816 -v -o main.obj main.asm
	../wla-dx/build/binaries/wlalink -v link ../out/$(SMC_NAME)
	rm main.obj
	@echo "Release build completed: ../out/$(SMC_NAME)"
