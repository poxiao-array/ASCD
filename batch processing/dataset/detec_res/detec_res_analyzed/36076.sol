'solc --version' running
'solc ./dataset/contracts/transaction_order/36076.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/36076.sol:
./dataset/contracts/transaction_order/36076.sol:6:5: Warning: No visibility specified. Defaulting to "public".
    function Ownable() { Owner = msg.sender; }
    ^----------------------------------------^
./dataset/contracts/transaction_order/36076.sol:15:5: Warning: No visibility specified. Defaulting to "public".
    function initCapsule(uint open) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36076.sol:20:5: Warning: No visibility specified. Defaulting to "public".
    function() payable { deposit(); }
    ^-------------------------------^
./dataset/contracts/transaction_order/36076.sol:22:5: Warning: No visibility specified. Defaulting to "public".
    function deposit() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36076.sol:25:14: Warning: "throw" is deprecated in favour of "revert()", "require()" and "assert()".
        else throw;
             ^---^
./dataset/contracts/transaction_order/36076.sol:28:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw(uint amount) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36076.sol:36:5: Warning: No visibility specified. Defaulting to "public".
    function kill() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/36076.sol:32:17: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
                msg.sender.send( amount );
                ^-----------------------^
./dataset/contracts/transaction_order/36076.sol:38:13: Warning: "suicide" has been deprecated in favour of "selfdestruct"
            suicide( msg.sender );
            ^-------------------^
./dataset/contracts/transaction_order/36076.sol:23:13: Warning: "msg.value" used in non-payable function. Do you want to add the "payable" modifier to this function?
        if( msg.value >= 0.5 ether )
            ^-------^
./dataset/contracts/transaction_order/36076.sol:24:37: Warning: "msg.value" used in non-payable function. Do you want to add the "payable" modifier to this function?
            deposits[msg.sender] += msg.value;
                                    ^-------^

INFO:Detectors:
TimeCapsule.Owner (dataset/contracts/transaction_order/36076.sol#11) shadows:
	- Ownable.Owner (dataset/contracts/transaction_order/36076.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
TimeCapsule.kill() (dataset/contracts/transaction_order/36076.sol#36-39) uses a dangerous strict equality:
	- isOwner() && this.balance == 0 (dataset/contracts/transaction_order/36076.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
TimeCapsule.withdraw(uint256) (dataset/contracts/transaction_order/36076.sol#28-34) ignores return value by msg.sender.send(amount) (dataset/contracts/transaction_order/36076.sol#32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
TimeCapsule.withdraw(uint256) (dataset/contracts/transaction_order/36076.sol#28-34) uses timestamp for comparisons
	Dangerous comparisons:
	- isOwner() && now >= openDate (dataset/contracts/transaction_order/36076.sol#29)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/36076.sol#25):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected suicide(address)(msg.sender) (dataset/contracts/transaction_order/36076.sol#38):
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
	- ^0.4.17 (dataset/contracts/transaction_order/36076.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Ownable.Owner (dataset/contracts/transaction_order/36076.sol#4) is not in mixedCase
Variable TimeCapsule.Owner (dataset/contracts/transaction_order/36076.sol#11) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/36076.sol analyzed (2 contracts with 100 detectors), 10 result(s) found
