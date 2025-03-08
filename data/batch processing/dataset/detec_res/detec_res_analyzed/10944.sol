'solc --version' running
'solc ./dataset/contracts/transaction_order/10944.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/10944.sol:
./dataset/contracts/transaction_order/10944.sol:22:33: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).balance" instead.
            msg.sender.transfer(this.balance);
                                ^----------^
./dataset/contracts/transaction_order/10944.sol:30:33: Warning: Using contract member "balance" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).balance" instead.
            msg.sender.transfer(this.balance);
                                ^----------^

INFO:Detectors:
PIGGYBANK.CashOut(bytes) (dataset/contracts/transaction_order/10944.sol#18-24) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(this.balance) (dataset/contracts/transaction_order/10944.sol#22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
PIGGYBANK.SetcashOutTime(uint256) (dataset/contracts/transaction_order/10944.sol#49-55) should emit an event for: 
	- cashOutTime = date (dataset/contracts/transaction_order/10944.sol#53) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
PIGGYBANK.Setmyadress(address)._myadress (dataset/contracts/transaction_order/10944.sol#57) lacks a zero-check on :
		- myadress = _myadress (dataset/contracts/transaction_order/10944.sol#61)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
PIGGYBANK.CashOut(bytes) (dataset/contracts/transaction_order/10944.sol#18-24) uses timestamp for comparisons
	Dangerous comparisons:
	- hashPwd == keccak256()(pass) && now > cashOutTime (dataset/contracts/transaction_order/10944.sol#20)
PIGGYBANK.CashOut() (dataset/contracts/transaction_order/10944.sol#26-32) uses timestamp for comparisons
	Dangerous comparisons:
	- msg.sender == myadress && now > cashOutTime (dataset/contracts/transaction_order/10944.sol#28)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- ^0.4.24 (dataset/contracts/transaction_order/10944.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function PIGGYBANK.CashOut(bytes) (dataset/contracts/transaction_order/10944.sol#18-24) is not in mixedCase
Function PIGGYBANK.CashOut() (dataset/contracts/transaction_order/10944.sol#26-32) is not in mixedCase
Function PIGGYBANK.DebugHash(bytes) (dataset/contracts/transaction_order/10944.sol#37) is not in mixedCase
Function PIGGYBANK.SetPwd(bytes32) (dataset/contracts/transaction_order/10944.sol#39-47) is not in mixedCase
Function PIGGYBANK.SetcashOutTime(uint256) (dataset/contracts/transaction_order/10944.sol#49-55) is not in mixedCase
Function PIGGYBANK.Setmyadress(address) (dataset/contracts/transaction_order/10944.sol#57-63) is not in mixedCase
Parameter PIGGYBANK.Setmyadress(address)._myadress (dataset/contracts/transaction_order/10944.sol#57) is not in mixedCase
Function PIGGYBANK.PwdHasBeenSet(bytes32) (dataset/contracts/transaction_order/10944.sol#65-71) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
DebugHash(bytes) should be declared external:
	- PIGGYBANK.DebugHash(bytes) (dataset/contracts/transaction_order/10944.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/10944.sol analyzed (1 contracts with 100 detectors), 16 result(s) found
