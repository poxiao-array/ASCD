'solc --version' running
'solc ./dataset/contracts/transaction_order/23902.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23902.sol:
./dataset/contracts/transaction_order/23902.sol:7:5: Warning: No visibility specified. Defaulting to "public".
    function bytesToAddr (bytes b) constant returns (address)  {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/23902.sol:7:5: Warning: Function state mutability can be restricted to pure
    function bytesToAddr (bytes b) constant returns (address)  {
    ^
Spanning multiple lines.

INFO:Detectors:
Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) has external calls inside a loop: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/23902.sol#41)
Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) has external calls inside a loop: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/23902.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/23902.sol#29)' in Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) potentially used before declaration: invaddress = bytesToAddr(msg.data) (dataset/contracts/transaction_order/23902.sol#27)
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/23902.sol#29)' in Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) potentially used before declaration: invaddress == 0x0 || invaddress == recaddress (dataset/contracts/transaction_order/23902.sol#28)
Variable 'Treethereum.fallback().share (dataset/contracts/transaction_order/23902.sol#39)' in Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) potentially used before declaration: inviter[recaddress].transfer(share) (dataset/contracts/transaction_order/23902.sol#49)
Variable 'Treethereum.fallback().invaddress (dataset/contracts/transaction_order/23902.sol#29)' in Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) potentially used before declaration: addrecruit(recaddress,invaddress) (dataset/contracts/transaction_order/23902.sol#31)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#pre-declaration-usage-of-local-variables
INFO:Detectors:
Treethereum.fallback() (dataset/contracts/transaction_order/23902.sol#24-50) uses timestamp for comparisons
	Dangerous comparisons:
	- amount < 200000000000000000 && now > timeout (dataset/contracts/transaction_order/23902.sol#34)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.20 (dataset/contracts/transaction_order/23902.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Treethereum.addrecruit(address,address)._recaddress (dataset/contracts/transaction_order/23902.sol#17) is not in mixedCase
Parameter Treethereum.addrecruit(address,address)._invaddress (dataset/contracts/transaction_order/23902.sol#17) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/23902.sol analyzed (1 contracts with 100 detectors), 11 result(s) found
