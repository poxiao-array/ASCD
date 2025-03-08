'solc --version' running
'solc ./dataset/contracts/transaction_order/18008.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/18008.sol:
./dataset/contracts/transaction_order/18008.sol:38:33: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
            msg.sender.transfer(this.balance);
                                ^----------^
./dataset/contracts/transaction_order/18008.sol:51:29: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member.
        msg.sender.transfer(this.balance);
                            ^----------^

INFO:Detectors:
RACEFORETH.endRace() (dataset/contracts/transaction_order/18008.sol#47-52) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > latestTimestamp + 259200) (dataset/contracts/transaction_order/18008.sol#49)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint 0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.21 (dataset/contracts/transaction_order/18008.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable RACEFORETH.SCORE_TO_WIN (dataset/contracts/transaction_order/18008.sol#7) is not in mixedCase
Variable RACEFORETH.PRIZE (dataset/contracts/transaction_order/18008.sol#8) is not in mixedCase
Variable RACEFORETH.speed_limit (dataset/contracts/transaction_order/18008.sol#13) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
RACEFORETH.SCORE_TO_WIN (dataset/contracts/transaction_order/18008.sol#7) should be constant 
RACEFORETH.speed_limit (dataset/contracts/transaction_order/18008.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/18008.sol analyzed (1 contracts with 100 detectors), 8 result(s) found
