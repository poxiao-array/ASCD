'solc --version' running
'solc ./dataset/contracts/transaction_order/33600.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33600.sol:
./dataset/contracts/transaction_order/33600.sol:8:3: Warning: Variable is declared as a storage pointer. Use an explicit "storage" keyword to silence this warning.
		string  		theMessage;
		^------------------^

INFO:Detectors:
NumberBoard (dataset/contracts/transaction_order/33600.sol#3-210) contract sets array length with a user-controlled value:
	- ownershipLookup[msg.sender].push(theNum) (dataset/contracts/transaction_order/33600.sol#58)
NumberBoard (dataset/contracts/transaction_order/33600.sol#3-210) contract sets array length with a user-controlled value:
	- ownershipLookup[to].push(theNum) (dataset/contracts/transaction_order/33600.sol#74)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/33600.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
updateMessage(uint256,string) should be declared external:
	- NumberBoard.updateMessage(uint256,string) (dataset/contracts/transaction_order/33600.sol#78-82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/33600.sol analyzed (1 contracts with 100 detectors), 5 result(s) found
