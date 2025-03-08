'solc --version' running
'solc ./dataset/contracts/transaction_order/7886.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Donation.DonateEther() (dataset/contracts/transaction_order/7886.sol#97-109) ignores return value by token.transferFrom(owner,msg.sender,_tokenGift) (dataset/contracts/transaction_order/7886.sol#105)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
Donation.getDonation(address)._to (dataset/contracts/transaction_order/7886.sol#124) lacks a zero-check on :
		- _to.transfer(address(this).balance) (dataset/contracts/transaction_order/7886.sol#126)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.24 (dataset/contracts/transaction_order/7886.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract locaToken (dataset/contracts/transaction_order/7886.sol#5-8) is not in CapWords
Parameter SafeMath.sub(uint256,uint256)._base (dataset/contracts/transaction_order/7886.sol#12) is not in mixedCase
Parameter SafeMath.sub(uint256,uint256)._value (dataset/contracts/transaction_order/7886.sol#12) is not in mixedCase
Parameter SafeMath.add(uint256,uint256)._base (dataset/contracts/transaction_order/7886.sol#20) is not in mixedCase
Parameter SafeMath.add(uint256,uint256)._value (dataset/contracts/transaction_order/7886.sol#20) is not in mixedCase
Parameter SafeMath.div(uint256,uint256)._base (dataset/contracts/transaction_order/7886.sol#28) is not in mixedCase
Parameter SafeMath.div(uint256,uint256)._value (dataset/contracts/transaction_order/7886.sol#28) is not in mixedCase
Parameter SafeMath.mul(uint256,uint256)._base (dataset/contracts/transaction_order/7886.sol#36) is not in mixedCase
Parameter SafeMath.mul(uint256,uint256)._value (dataset/contracts/transaction_order/7886.sol#36) is not in mixedCase
Function Donation.DonateEther() (dataset/contracts/transaction_order/7886.sol#97-109) is not in mixedCase
Function Donation.TokenBalance() (dataset/contracts/transaction_order/7886.sol#117-121) is not in mixedCase
Parameter Donation.getDonation(address)._to (dataset/contracts/transaction_order/7886.sol#124) is not in mixedCase
Function Donation.CloseDonation() (dataset/contracts/transaction_order/7886.sol#130-133) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Donation.DonateEther() (dataset/contracts/transaction_order/7886.sol#97-109) uses literals with too many digits:
	- _tokenGift = 25000000000 (dataset/contracts/transaction_order/7886.sol#100)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Donation.token (dataset/contracts/transaction_order/7886.sol#52) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/7886.sol analyzed (3 contracts with 100 detectors), 19 result(s) found
