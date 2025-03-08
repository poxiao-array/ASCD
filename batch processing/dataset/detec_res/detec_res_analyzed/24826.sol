'solc --version' running
'solc ./dataset/contracts/transaction_order/24826.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/24826.sol:
./dataset/contracts/transaction_order/24826.sol:4:23: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function takeAGuess(uint8 _myGuess) public payable {}
                      ^------------^

INFO:Detectors:
OneInTen.call_lucky(address,address) (dataset/contracts/transaction_order/24826.sol#8-13) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/24826.sol#12)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
OneInTen.call_lucky(address,address) (dataset/contracts/transaction_order/24826.sol#8-13) uses a weak PRNG: "guess = uint8(keccak256()(now,contract_owner)) % 10 (dataset/contracts/transaction_order/24826.sol#9)" 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#weak-PRNG
INFO:Detectors:
Contract locking ether found:
	Contract LuckyNumber (dataset/contracts/transaction_order/24826.sol#3-5) has payable functions:
	 - LuckyNumber.takeAGuess(uint8) (dataset/contracts/transaction_order/24826.sol#4)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
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
	- ^0.4.20 (dataset/contracts/transaction_order/24826.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function OneInTen.call_lucky(address,address) (dataset/contracts/transaction_order/24826.sol#8-13) is not in mixedCase
Parameter OneInTen.call_lucky(address,address).contract_address (dataset/contracts/transaction_order/24826.sol#8) is not in mixedCase
Parameter OneInTen.call_lucky(address,address).contract_owner (dataset/contracts/transaction_order/24826.sol#8) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/24826.sol analyzed (2 contracts with 100 detectors), 8 result(s) found
