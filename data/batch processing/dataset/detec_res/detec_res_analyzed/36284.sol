'solc --version' running
'solc ./dataset/contracts/transaction_order/36284.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/36284.sol:
./dataset/contracts/transaction_order/36284.sol:6:5: Warning: No visibility specified. Defaulting to "public".
    function owned() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36284.sol:12:13: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
            throw;
            ^---^
./dataset/contracts/transaction_order/36284.sol:21:5: Warning: No visibility specified. Defaulting to "public".
    function init() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36284.sol:25:5: Warning: No visibility specified. Defaulting to "public".
    function() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36284.sol:29:5: Warning: No visibility specified. Defaulting to "public".
    function deposit() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36284.sol:33:13: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
            throw;
            ^---^
./dataset/contracts/transaction_order/36284.sol:42:2: Warning: No visibility specified. Defaulting to "public".
	function kill() onlyowner {
 ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36284.sol:39:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            msg.sender.send(amount);
            ^---------------------^

INFO:Detectors:
deposittest.owner (dataset/contracts/transaction_order/36284.sol#18) shadows:
	- owned.owner (dataset/contracts/transaction_order/36284.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
deposittest.kill() (dataset/contracts/transaction_order/36284.sol#42-46) uses a dangerous strict equality:
	- this.balance == 0 (dataset/contracts/transaction_order/36284.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
deposittest.withdraw(uint256) (dataset/contracts/transaction_order/36284.sol#36-40) ignores return value by msg.sender.send(amount) (dataset/contracts/transaction_order/36284.sol#39)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/36284.sol#12):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/36284.sol#33):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/36284.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/36284.sol#3-15) is not in CapWords
Contract deposittest (dataset/contracts/transaction_order/36284.sol#17-48) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/36284.sol analyzed (2 contracts with 100 detectors), 9 result(s) found
