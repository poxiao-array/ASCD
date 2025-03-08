'solc --version' running
'solc ./dataset/contracts/transaction_order/TransactionOrderingSolution.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Contract locking ether found:
	Contract TransactionOrderingSolution (dataset/contracts/transaction_order/TransactionOrderingSolution.sol#4-52) has payable functions:
	 - TransactionOrderingSolution.buy(uint256) (dataset/contracts/transaction_order/TransactionOrderingSolution.sol#31-39)
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
	- 0.5.10 (dataset/contracts/transaction_order/TransactionOrderingSolution.sol#2)
solc-0.5.10 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter TransactionOrderingSolution.buy(uint256)._precioIndice (dataset/contracts/transaction_order/TransactionOrderingSolution.sol#31) is not in mixedCase
Parameter TransactionOrderingSolution.setPrecio(uint256)._precio (dataset/contracts/transaction_order/TransactionOrderingSolution.sol#41) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/TransactionOrderingSolution.sol analyzed (1 contracts with 100 detectors), 5 result(s) found
