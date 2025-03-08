'solc --version' running
'solc ./dataset/contracts/transaction_order/24258.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/24258.sol:
./dataset/contracts/transaction_order/24258.sol:91:2: Warning: Function state mutability can be restricted to pure
	function validate(uint sequence) public constant returns (bool) {
 ^
Spanning multiple lines.

INFO:Detectors:
Protocol108.execute() (dataset/contracts/transaction_order/24258.sol#41-48) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)(offset + length > now) (dataset/contracts/transaction_order/24258.sol#44)
Protocol108.withdraw() (dataset/contracts/transaction_order/24258.sol#51-64) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)(offset + length <= now) (dataset/contracts/transaction_order/24258.sol#54)
Protocol108.countdown() (dataset/contracts/transaction_order/24258.sol#100-118) uses timestamp for comparisons
	Dangerous comparisons:
	- offset + length > n (dataset/contracts/transaction_order/24258.sol#111)
Protocol108.fallback() (dataset/contracts/transaction_order/24258.sol#122-139) uses timestamp for comparisons
	Dangerous comparisons:
	- offset + length > now (dataset/contracts/transaction_order/24258.sol#127)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.18 (dataset/contracts/transaction_order/24258.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Protocol108.length (dataset/contracts/transaction_order/24258.sol#12) should be constant 
Protocol108.version (dataset/contracts/transaction_order/24258.sol#9) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/24258.sol analyzed (1 contracts with 100 detectors), 8 result(s) found
