'solc --version' running
'solc ./dataset/contracts/transaction_order/25615.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/25615.sol:
./dataset/contracts/transaction_order/25615.sol:6:5: Warning: No visibility specified. Defaulting to "public".
    function owned() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25615.sol:21:5: Warning: No visibility specified. Defaulting to "public".
    function init() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25615.sol:25:5: Warning: No visibility specified. Defaulting to "public".
    function() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25615.sol:32:5: Warning: No visibility specified. Defaulting to "public".
    function deposit() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25615.sol:42:2: Warning: No visibility specified. Defaulting to "public".
	function kill() onlyowner {
 ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25615.sol:43:6: Warning: "suicide" has been deprecated in favour of "selfdestruct"
	    suicide(msg.sender);
	    ^-----------------^

INFO:Detectors:
MyNewBank.owner (dataset/contracts/transaction_order/25615.sol#18) shadows:
	- owned.owner (dataset/contracts/transaction_order/25615.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Deprecated standard detected suicide(address)(msg.sender) (dataset/contracts/transaction_order/25615.sol#43):
	- Usage of "suicide()" should be replaced with "selfdestruct()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.20 (dataset/contracts/transaction_order/25615.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/25615.sol#3-15) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/25615.sol analyzed (2 contracts with 100 detectors), 5 result(s) found
