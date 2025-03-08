'solc --version' running
'solc ./dataset/contracts/transaction_order/25337.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/25337.sol:
./dataset/contracts/transaction_order/25337.sol:6:5: Warning: No visibility specified. Defaulting to "public".
    function bytesToAddr (bytes b) constant returns (address)  {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25337.sol:16:5: Warning: No visibility specified. Defaulting to "public".
    function withdraw(uint amount) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/25337.sol:6:5: Warning: Function state mutability can be restricted to pure
    function bytesToAddr (bytes b) constant returns (address)  {
    ^
Spanning multiple lines.

INFO:Detectors:
Treethereum.withdraw(uint256) (dataset/contracts/transaction_order/25337.sol#16-20) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(amount) (dataset/contracts/transaction_order/25337.sol#18)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) has external calls inside a loop: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/25337.sol#45)
Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) has external calls inside a loop: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/25337.sol#48)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/25337.sol#33)' in Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) potentially used before declaration: invaddress = bytesToAddr(msg.data) (dataset/contracts/transaction_order/25337.sol#31)
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/25337.sol#33)' in Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) potentially used before declaration: invaddress == 0x0 || invaddress == recaddress (dataset/contracts/transaction_order/25337.sol#32)
Variable 'Treethereum.fallback().share (dataset/contracts/transaction_order/25337.sol#43)' in Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) potentially used before declaration: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/25337.sol#53)
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/25337.sol#33)' in Treethereum.fallback() (dataset/contracts/transaction_order/25337.sol#29-54) potentially used before declaration: addrecruit(recaddress,invaddress) (dataset/contracts/transaction_order/25337.sol#35)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#pre-declaration-usage-of-local-variables
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/25337.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Treethereum.addrecruit(address,address)._recaddress (dataset/contracts/transaction_order/25337.sol#22) is not in mixedCase
Parameter Treethereum.addrecruit(address,address)._invaddress (dataset/contracts/transaction_order/25337.sol#22) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/25337.sol analyzed (1 contracts with 100 detectors), 11 result(s) found
