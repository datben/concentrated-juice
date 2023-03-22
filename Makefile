SIERA_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/cairo-compile
CASM_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/sierra-compile

STARKNET_SIERA_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/starknet-compile 
STARKNET_CASM_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/starknet-sierra-compile



compile-sk-siera: entrypoint.cairo
	$(STARKNET_SIERA_COMPILER) entrypoint.cairo entrypoint.json

compile-sk-casm: entrypoint.json 
	$(STARKNET_CASM_COMPILER) entrypoint.json entrypoint.casm

all: clean compile-sk-siera compile-sk-casm

clean:
	rm -f entrypoint.json entrypoint.casm
