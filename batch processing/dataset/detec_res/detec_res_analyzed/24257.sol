'solc --version' running
'solc ./dataset/contracts/transaction_order/24257.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/24257.sol:
./dataset/contracts/transaction_order/24257.sol:91:2: Warning: Function state mutability can be restricted to pure
	function validate(uint sequence) public constant returns (bool) {
 ^
Spanning multiple lines.
./dataset/contracts/transaction_order/24257.sol:197:2: Warning: Function state mutability can be restricted to pure
	function seqSearch(uint sequence, uint offset, uint length) private constant returns (int) {
 ^
Spanning multiple lines.

INFO:Detectors:
Protocol108v2.version (dataset/contracts/transaction_order/24257.sol#147) shadows:
	- Protocol108.version (dataset/contracts/transaction_order/24257.sol#9)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Protocol108v2.seqSearch(uint256,uint256,uint256).offset (dataset/contracts/transaction_order/24257.sol#197) shadows:
	- Protocol108.offset (dataset/contracts/transaction_order/24257.sol#15) (state variable)
Protocol108v2.seqSearch(uint256,uint256,uint256).length (dataset/contracts/transaction_order/24257.sol#197) shadows:
	- Protocol108.length (dataset/contracts/transaction_order/24257.sol#12) (state variable)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
Protocol108.execute() (dataset/contracts/transaction_order/24257.sol#41-48) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)(offset + length > now) (dataset/contracts/transaction_order/24257.sol#44)
Protocol108.withdraw() (dataset/contracts/transaction_order/24257.sol#51-64) uses timestamp for comparisons
	Dangerous comparisons:
	- assert(bool)(offset + length <= now) (dataset/contracts/transaction_order/24257.sol#54)
Protocol108.countdown() (dataset/contracts/transaction_order/24257.sol#100-118) uses timestamp for comparisons
	Dangerous comparisons:
	- offset + length > n (dataset/contracts/transaction_order/24257.sol#111)
Protocol108.fallback() (dataset/contracts/transaction_order/24257.sol#122-139) uses timestamp for comparisons
	Dangerous comparisons:
	- offset + length > now (dataset/contracts/transaction_order/24257.sol#127)
Protocol108v2.validate(uint256) (dataset/contracts/transaction_order/24257.sol#155-190) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(c < 60 && (sequence == 4815162342 || sequence == 48151623420 || sequence == 481516234200) || c < 240 && (sequence == 4815162342000 || sequence == 48151623420000 || sequence == 481516234200000) || (sequence == 4815162342000000 || sequence == 48151623420000000 || sequence == 481516234200000000 || sequence == 4815162342000000000 || sequence == 48151623420000000000 || sequence == 481516234200000000000 || seqSearch(sequence,12,56) != - 1)) (dataset/contracts/transaction_order/24257.sol#166-186)
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
	- 0.4.18 (dataset/contracts/transaction_order/24257.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Protocol108v2.validate(uint256) (dataset/contracts/transaction_order/24257.sol#155-190) uses literals with too many digits:
	- require(bool)(c < 60 && (sequence == 4815162342 || sequence == 48151623420 || sequence == 481516234200) || c < 240 && (sequence == 4815162342000 || sequence == 48151623420000 || sequence == 481516234200000) || (sequence == 4815162342000000 || sequence == 48151623420000000 || sequence == 481516234200000000 || sequence == 4815162342000000000 || sequence == 48151623420000000000 || sequence == 481516234200000000000 || seqSearch(sequence,12,56) != - 1)) (dataset/contracts/transaction_order/24257.sol#166-186)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Protocol108.length (dataset/contracts/transaction_order/24257.sol#12) should be constant 
Protocol108.version (dataset/contracts/transaction_order/24257.sol#9) should be constant 
Protocol108v2.version (dataset/contracts/transaction_order/24257.sol#147) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/24257.sol analyzed (2 contracts with 100 detectors), 14 result(s) found
