'solc --version' running
'solc ./dataset/contracts/transaction_order/22536.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Etherich.participate(string) (dataset/contracts/transaction_order/22536.sol#37-59) use msg.value in a loop: amount = SafeMath.div(SafeMath.mul(msg.value,REFERRAL_RATE[i]),100) (dataset/contracts/transaction_order/22536.sol#52)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#msgvalue-inside-a-loop
INFO:Detectors:
Etherich.changeOwner(address) (dataset/contracts/transaction_order/22536.sol#89-91) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/22536.sol#90) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Etherich.payout(address,uint256).receiver (dataset/contracts/transaction_order/22536.sol#81) lacks a zero-check on :
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/22536.sol#83)
		- receiver.transfer(amount) (dataset/contracts/transaction_order/22536.sol#85)
Etherich.changeOwner(address).newOwner (dataset/contracts/transaction_order/22536.sol#89) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/22536.sol#90)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Etherich.participate(string) (dataset/contracts/transaction_order/22536.sol#37-59) has external calls inside a loop: referrer.transfer(amount) (dataset/contracts/transaction_order/22536.sol#53)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
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
	- ^0.4.20 (dataset/contracts/transaction_order/22536.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable Etherich.REFERRAL_RATE (dataset/contracts/transaction_order/22536.sol#19) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in Etherich.participate(string) (dataset/contracts/transaction_order/22536.sol#37-59):
	External calls:
	- referrer.transfer(amount) (dataset/contracts/transaction_order/22536.sol#53)
	State variables written after the call(s):
	- memberCount ++ (dataset/contracts/transaction_order/22536.sol#57)
	Event emitted after the call(s):
	- HasNewMember(memberCount) (dataset/contracts/transaction_order/22536.sol#58)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
participate(string) should be declared external:
	- Etherich.participate(string) (dataset/contracts/transaction_order/22536.sol#37-59)
doesReferralCodeValid(string) should be declared external:
	- Etherich.doesReferralCodeValid(string) (dataset/contracts/transaction_order/22536.sol#65-67)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/22536.sol analyzed (2 contracts with 100 detectors), 11 result(s) found
