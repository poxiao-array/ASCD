'solc --version' running
'solc ./dataset/contracts/transaction_order/33425.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/33425.sol:
./dataset/contracts/transaction_order/33425.sol:14:5: Warning: No visibility specified. Defaulting to "public".
    function AdminInterface(){
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33425.sol:24:5: Warning: No visibility specified. Defaulting to "public".
    function Set(address dataBase) payable onlyOwner
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33425.sol:30:5: Warning: No visibility specified. Defaulting to "public".
    function()payable{}
    ^-----------------^
./dataset/contracts/transaction_order/33425.sol:32:5: Warning: No visibility specified. Defaulting to "public".
    function transfer(address multisig) payable onlyOwner {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33425.sol:36:5: Warning: No visibility specified. Defaulting to "public".
    function addOwner(address newAddr) payable
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/33425.sol:41:13: Warning: Return value of low-level calls not used.
            oracle.delegatecall(bytes4(keccak256("AddToWangDB(address)")),msg.sender);
            ^-----------------------------------------------------------------------^

INFO:Detectors:
AdminInterface.addOwner(address) (dataset/contracts/transaction_order/33425.sol#36-46) sends eth to arbitrary user
	Dangerous calls:
	- newAddr.transfer(this.balance) (dataset/contracts/transaction_order/33425.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
AdminInterface.addOwner(address) (dataset/contracts/transaction_order/33425.sol#36-46) uses delegatecall to a input-controlled function id
	- oracle.delegatecall(bytes4(keccak256()(AddToWangDB(address))),msg.sender) (dataset/contracts/transaction_order/33425.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#controlled-delegatecall
INFO:Detectors:
AdminInterface.addOwner(address) (dataset/contracts/transaction_order/33425.sol#36-46) ignores return value by oracle.delegatecall(bytes4(keccak256()(AddToWangDB(address))),msg.sender) (dataset/contracts/transaction_order/33425.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-low-level-calls
INFO:Detectors:
AdminInterface.Set(address) (dataset/contracts/transaction_order/33425.sol#24-28) should emit an event for: 
	- Limit = msg.value (dataset/contracts/transaction_order/33425.sol#26) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AdminInterface.Set(address).dataBase (dataset/contracts/transaction_order/33425.sol#24) lacks a zero-check on :
		- oracle = dataBase (dataset/contracts/transaction_order/33425.sol#27)
AdminInterface.transfer(address).multisig (dataset/contracts/transaction_order/33425.sol#32) lacks a zero-check on :
		- multisig.transfer(msg.value) (dataset/contracts/transaction_order/33425.sol#33)
AdminInterface.addOwner(address).newAddr (dataset/contracts/transaction_order/33425.sol#36) lacks a zero-check on :
		- newAddr.transfer(this.balance) (dataset/contracts/transaction_order/33425.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.18 (dataset/contracts/transaction_order/33425.sol#7)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in AdminInterface.addOwner(address) (dataset/contracts/transaction_order/33425.sol#36-46):
	- oracle.delegatecall(bytes4(keccak256()(AddToWangDB(address))),msg.sender) (dataset/contracts/transaction_order/33425.sol#41)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function AdminInterface.Set(address) (dataset/contracts/transaction_order/33425.sol#24-28) is not in mixedCase
Variable AdminInterface.Owner (dataset/contracts/transaction_order/33425.sol#10) is not in mixedCase
Variable AdminInterface.Limit (dataset/contracts/transaction_order/33425.sol#12) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/33425.sol analyzed (1 contracts with 100 detectors), 13 result(s) found
