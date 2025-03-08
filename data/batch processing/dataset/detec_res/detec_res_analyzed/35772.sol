'solc --version' running
'solc ./dataset/contracts/transaction_order/35772.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/35772.sol:
./dataset/contracts/transaction_order/35772.sol:9:5: Warning: No visibility specified. Defaulting to "public".
    function Ownable() { Owner = msg.sender; }
    ^----------------------------------------^
./dataset/contracts/transaction_order/35772.sol:22:5: Warning: No visibility specified. Defaulting to "public".
    function init(uint open) payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/35772.sol:28:5: Warning: No visibility specified. Defaulting to "public".
    function() payable { deposit(); }
    ^-------------------------------^
./dataset/contracts/transaction_order/35772.sol:30:5: Warning: No visibility specified. Defaulting to "public".
    function deposit() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/35772.sol:37:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw(uint amount) payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/35772.sol:46:5: Warning: No visibility specified. Defaulting to "public".
    function kill() payable {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/35772.sol:18:23: Warning: This declaration shadows an existing declaration.
    event Initialized(address indexed Owner, uint OpenDate);
                      ^-------------------^
./dataset/contracts/transaction_order/35772.sol:14:5: The shadowed declaration is here:
    address public Owner;
    ^------------------^


INFO:Detectors:
Savings.Owner (dataset/contracts/transaction_order/35772.sol#14) shadows:
	- Ownable.Owner (dataset/contracts/transaction_order/35772.sol#7)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Savings.kill() (dataset/contracts/transaction_order/35772.sol#46-50) uses a dangerous strict equality:
	- isOwner() && this.balance == 0 (dataset/contracts/transaction_order/35772.sol#47)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Savings.withdraw(uint256) (dataset/contracts/transaction_order/35772.sol#37-44) uses timestamp for comparisons
	Dangerous comparisons:
	- isOwner() && now >= openDate (dataset/contracts/transaction_order/35772.sol#38)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.17 (dataset/contracts/transaction_order/35772.sol#4)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Ownable.Owner (dataset/contracts/transaction_order/35772.sol#7) is not in mixedCase
Variable Savings.Owner (dataset/contracts/transaction_order/35772.sol#14) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/35772.sol analyzed (2 contracts with 100 detectors), 7 result(s) found
