'solc --version' running
'solc ./dataset/contracts/transaction_order/23596.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23596.sol:
./dataset/contracts/transaction_order/23596.sol:26:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        address(0x0).send(this.balance);
        ^-----------------------------^
./dataset/contracts/transaction_order/23596.sol:33:9: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
        msg.sender.send(this.balance);
        ^---------------------------^

INFO:Detectors:
Griefing.fallback() (dataset/contracts/transaction_order/23596.sol#24-27) ignores return value by address(0x0).send(this.balance) (dataset/contracts/transaction_order/23596.sol#26)
Griefing.getBack() (dataset/contracts/transaction_order/23596.sol#31-34) ignores return value by msg.sender.send(this.balance) (dataset/contracts/transaction_order/23596.sol#33)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/23596.sol#8)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/23596.sol analyzed (1 contracts with 100 detectors), 4 result(s) found
