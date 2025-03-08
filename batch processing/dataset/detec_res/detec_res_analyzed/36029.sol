'solc --version' running
'solc ./dataset/contracts/transaction_order/36029.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/36029.sol:
./dataset/contracts/transaction_order/36029.sol:5:5: Warning: No visibility specified. Defaulting to "public".
    function Owned() { Owner = msg.sender; }
    ^--------------------------------------^
./dataset/contracts/transaction_order/36029.sol:13:5: Warning: No visibility specified. Defaulting to "public".
    function StaffWallet() { Owner = msg.sender; }
    ^--------------------------------------------^
./dataset/contracts/transaction_order/36029.sol:15:5: Warning: No visibility specified. Defaulting to "public".
    function() payable { }
    ^--------------------^
./dataset/contracts/transaction_order/36029.sol:17:5: Warning: No visibility specified. Defaulting to "public".
    function deposit() payable { // For employee benefits
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36029.sol:23:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw(uint amount) onlyOwner {  // only BOD can initiate payments as requested
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36029.sol:30:5: Warning: No visibility specified. Defaulting to "public".
    function kill() onlyOwner { 
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36029.sol:27:13: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
            msg.sender.send(amount);
            ^---------------------^
./dataset/contracts/transaction_order/36029.sol:32:9: Warning: "suicide" has been deprecated in favour of "selfdestruct"
        suicide(msg.sender);
        ^-----------------^
./dataset/contracts/transaction_order/36029.sol:25:33: Warning: "msg.value" used in non-payable function. Do you want to add the "payable" modifier to this function?
        deposits[msg.sender] -= msg.value; // MAX: for security re entry attack dnr
                                ^-------^

INFO:Detectors:
StaffFunds.Owner (dataset/contracts/transaction_order/36029.sol#10) shadows:
	- Owned.Owner (dataset/contracts/transaction_order/36029.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
StaffFunds.kill() (dataset/contracts/transaction_order/36029.sol#30-33) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/36029.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
StaffFunds.withdraw(uint256) (dataset/contracts/transaction_order/36029.sol#23-28) ignores return value by msg.sender.send(amount) (dataset/contracts/transaction_order/36029.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
Modifier Owned.onlyOwner() (dataset/contracts/transaction_order/36029.sol#6) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Deprecated standard detected suicide(address)(msg.sender) (dataset/contracts/transaction_order/36029.sol#32):
	- Usage of "suicide()" should be replaced with "selfdestruct()"
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
	- ^0.4.17 (dataset/contracts/transaction_order/36029.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Owned.Owner (dataset/contracts/transaction_order/36029.sol#4) is not in mixedCase
Function StaffFunds.StaffWallet() (dataset/contracts/transaction_order/36029.sol#13) is not in mixedCase
Variable StaffFunds.Owner (dataset/contracts/transaction_order/36029.sol#10) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/36029.sol analyzed (2 contracts with 100 detectors), 10 result(s) found
