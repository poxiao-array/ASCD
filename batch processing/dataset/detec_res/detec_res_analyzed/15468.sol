'solc --version' running
'solc ./dataset/contracts/transaction_order/15468.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/15468.sol:
./dataset/contracts/transaction_order/15468.sol:6:5: Warning: No visibility specified. Defaulting to "public".
    function Owned() {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/15468.sol:82:9: Warning: "suicide" has been deprecated in favour of "selfdestruct"
        suicide(msg.sender);
        ^-----------------^

INFO:Detectors:
NewLottery.owner (dataset/contracts/transaction_order/15468.sol#35) shadows:
	- Owned.owner (dataset/contracts/transaction_order/15468.sol#5)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variable-shadowing
INFO:Detectors:
Owned.transferOwnership(address) (dataset/contracts/transaction_order/15468.sol#13-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/15468.sol#15) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Deprecated standard detected suicide(address)(msg.sender) (dataset/contracts/transaction_order/15468.sol#82):
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
	- ^0.4.20 (dataset/contracts/transaction_order/15468.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function NewLottery.LottoCount() (dataset/contracts/transaction_order/15468.sol#41-57) is not in mixedCase
Function NewLottery.AddTicket() (dataset/contracts/transaction_order/15468.sol#91-108) is not in mixedCase
Function NewLottery.PayWinner(address) (dataset/contracts/transaction_order/15468.sol#110-135) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/15468.sol analyzed (2 contracts with 100 detectors), 8 result(s) found
