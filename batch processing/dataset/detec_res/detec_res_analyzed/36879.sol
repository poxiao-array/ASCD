'solc --version' running
'solc ./dataset/contracts/transaction_order/36879.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BatchTransferContract.BatchTransferContract(address)._owner (dataset/contracts/transaction_order/36879.sol#56) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/36879.sol#57)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
BatchTransferContract.batchRefund(address[],uint256[]) (dataset/contracts/transaction_order/36879.sol#64-81) has external calls inside a loop: investors[i].transfer(ethAmounts[i]) (dataset/contracts/transaction_order/36879.sol#78)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Math.max256(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#12-14) is never used and should be removed
Math.max64(uint64,uint64) (dataset/contracts/transaction_order/36879.sol#4-6) is never used and should be removed
Math.min256(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#16-18) is never used and should be removed
Math.min64(uint64,uint64) (dataset/contracts/transaction_order/36879.sol#8-10) is never used and should be removed
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#40-44) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#28-33) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#22-26) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/36879.sol#35-38) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/36879.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
batchRefund(address[],uint256[]) should be declared external:
	- BatchTransferContract.batchRefund(address[],uint256[]) (dataset/contracts/transaction_order/36879.sol#64-81)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/36879.sol analyzed (3 contracts with 100 detectors), 13 result(s) found
