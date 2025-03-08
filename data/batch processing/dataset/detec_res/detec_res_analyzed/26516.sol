'solc --version' running
'solc ./dataset/contracts/transaction_order/26516.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26516.sol:
./dataset/contracts/transaction_order/26516.sol:13:76: Warning: "sha3" has been deprecated in favour of "keccak256"
    function GetHash(bytes pass) public constant returns (bytes32) {return sha3(pass);}
                                                                           ^--------^
./dataset/contracts/transaction_order/26516.sol:30:24: Warning: "sha3" has been deprecated in favour of "keccak256"
        if(hashPass == sha3(pass))
                       ^--------^
./dataset/contracts/transaction_order/26516.sol:13:5: Warning: Function state mutability can be restricted to pure
    function GetHash(bytes pass) public constant returns (bytes32) {return sha3(pass);}
    ^---------------------------------------------------------------------------------^

INFO:Detectors:
GIFT_1_ETH.GetGift(bytes) (dataset/contracts/transaction_order/26516.sol#26-34) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/26516.sol#32)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Deprecated standard detected sha3()(pass) (dataset/contracts/transaction_order/26516.sol#13):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected hashPass == sha3()(pass) (dataset/contracts/transaction_order/26516.sol#30):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.19 (dataset/contracts/transaction_order/26516.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract GIFT_1_ETH (dataset/contracts/transaction_order/26516.sol#3-55) is not in CapWords
Function GIFT_1_ETH.GetHash(bytes) (dataset/contracts/transaction_order/26516.sol#13) is not in mixedCase
Function GIFT_1_ETH.SetPass(bytes32) (dataset/contracts/transaction_order/26516.sol#15-24) is not in mixedCase
Function GIFT_1_ETH.GetGift(bytes) (dataset/contracts/transaction_order/26516.sol#26-34) is not in mixedCase
Function GIFT_1_ETH.Revoce() (dataset/contracts/transaction_order/26516.sol#36-44) is not in mixedCase
Function GIFT_1_ETH.PassHasBeenSet(bytes32) (dataset/contracts/transaction_order/26516.sol#46-53) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GetHash(bytes) should be declared external:
	- GIFT_1_ETH.GetHash(bytes) (dataset/contracts/transaction_order/26516.sol#13)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26516.sol analyzed (1 contracts with 100 detectors), 12 result(s) found
