'solc --version' running
'solc ./dataset/contracts/transaction_order/21927.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/21927.sol:
./dataset/contracts/transaction_order/21927.sol:11:25: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
        if(msg.value >= this.balance && n == SecretNumber && msg.value >= 0.07 ether) {
                        ^----------^
./dataset/contracts/transaction_order/21927.sol:13:33: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
            msg.sender.transfer(this.balance + msg.value);
                                ^----------^

INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.21 (dataset/contracts/transaction_order/21927.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Giveaway.Guess(uint256) (dataset/contracts/transaction_order/21927.sol#10-15) is not in mixedCase
Variable Giveaway.SecretNumber (dataset/contracts/transaction_order/21927.sol#5) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Giveaway.SecretNumber (dataset/contracts/transaction_order/21927.sol#5) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/21927.sol analyzed (1 contracts with 100 detectors), 5 result(s) found
