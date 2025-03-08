'solc --version' running
'solc ./dataset/contracts/transaction_order/23739.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23739.sol:
./dataset/contracts/transaction_order/23739.sol:15:5: Warning: Function state mutability can be restricted to pure
    function GetHash(bytes pass) public constant returns (bytes32) {return keccak256(pass);}
    ^--------------------------------------------------------------------------------------^

INFO:Detectors:
GIFT_1_ETH.GetGift(bytes) (dataset/contracts/transaction_order/23739.sol#29-38) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/23739.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
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
	- ^0.4.19 (dataset/contracts/transaction_order/23739.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract GIFT_1_ETH (dataset/contracts/transaction_order/23739.sol#3-67) is not in CapWords
Function GIFT_1_ETH.GetHash(bytes) (dataset/contracts/transaction_order/23739.sol#15) is not in mixedCase
Function GIFT_1_ETH.SetPass(bytes32) (dataset/contracts/transaction_order/23739.sol#17-27) is not in mixedCase
Function GIFT_1_ETH.GetGift(bytes) (dataset/contracts/transaction_order/23739.sol#29-38) is not in mixedCase
Function GIFT_1_ETH.Revoce() (dataset/contracts/transaction_order/23739.sol#40-49) is not in mixedCase
Function GIFT_1_ETH.PassHasBeenSet(bytes32) (dataset/contracts/transaction_order/23739.sol#51-58) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GetHash(bytes) should be declared external:
	- GIFT_1_ETH.GetHash(bytes) (dataset/contracts/transaction_order/23739.sol#15)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23739.sol analyzed (1 contracts with 100 detectors), 10 result(s) found
