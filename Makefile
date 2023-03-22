SIERA_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/cairo-compile
CASM_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/sierra-compile

STARKNET_SIERA_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/starknet-compile 
STARKNET_CASM_COMPILER = /home/datben/Bureau/StarkNet/cairo/target/release/starknet-sierra-compile



compile-sk-siera: contract.cairo
	$(STARKNET_SIERA_COMPILER) contract.cairo contract.json

compile-sk-casm: contract.json 
	$(STARKNET_CASM_COMPILER) contract.json contract.casm

all: clean compile-sk-siera compile-sk-casm

clean:
	rm -f contract.json contract.casm
