template.smc: main.asm link
	../wla-dx/build/binaries/wla-65816 -v -o main.obj main.asm
	../wla-dx/build/binaries/wlalink -v link template.smc
	rm main.obj
	../bsnes-plus/bsnes/out/bsnes template.smc
	rm template.smc