'solc --version' running
'solc ./dataset/contracts/transaction_order/TransactionOrderingAttacks.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Contract locking ether found:
	Contract TransactionOrderingAttacks (dataset/contracts/transaction_order/TransactionOrderingAttacks.sol#4-36) has payable functions:
	 - TransactionOrderingAttacks.buy() (dataset/contracts/transaction_order/TransactionOrderingAttacks.sol#25-29)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
INFO:Detectors:
Version constraint 0.5.10 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- AbiReencodingHeadOverflowWithStaticArrayCleanup
	- DirtyBytesArrayToStorage
	- NestedCalldataArrayAbiReencodingSizeValidation
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- YulOptimizerRedundantAssignmentBreakContinue0.5
	- ABIEncoderV2CalldataStructsWithStaticallySizedAndDynamicallyEncodedMembers.
It is used by:
	- 0.5.10 (dataset/contracts/transaction_order/TransactionOrderingAttacks.sol#2)
solc-0.5.10 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter TransactionOrderingAttacks.setPrice(uint256)._precio (dataset/contracts/transaction_order/TransactionOrderingAttacks.sol#31) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/TransactionOrderingAttacks.sol analyzed (1 contracts with 100 detectors), 4 result(s) found
