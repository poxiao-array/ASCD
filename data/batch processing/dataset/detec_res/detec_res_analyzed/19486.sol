'solc --version' running
'solc ./dataset/contracts/transaction_order/19486.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
DonationGuestbook.changeOwner(address) (dataset/contracts/transaction_order/19486.sol#42-45) should emit an event for: 
	- owner = _new_owner (dataset/contracts/transaction_order/19486.sol#44) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
DonationGuestbook.changeMinimumDonation(uint256) (dataset/contracts/transaction_order/19486.sol#47-50) should emit an event for: 
	- minimum_donation = _minDonation (dataset/contracts/transaction_order/19486.sol#49) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
DonationGuestbook.changeDonationWallet(address)._new_storage (dataset/contracts/transaction_order/19486.sol#37) lacks a zero-check on :
		- donationWallet = _new_storage (dataset/contracts/transaction_order/19486.sol#39)
DonationGuestbook.changeOwner(address)._new_owner (dataset/contracts/transaction_order/19486.sol#42) lacks a zero-check on :
		- owner = _new_owner (dataset/contracts/transaction_order/19486.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.21 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.21 (dataset/contracts/transaction_order/19486.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter DonationGuestbook.changeDonationWallet(address)._new_storage (dataset/contracts/transaction_order/19486.sol#37) is not in mixedCase
Parameter DonationGuestbook.changeOwner(address)._new_owner (dataset/contracts/transaction_order/19486.sol#42) is not in mixedCase
Parameter DonationGuestbook.changeMinimumDonation(uint256)._minDonation (dataset/contracts/transaction_order/19486.sol#47) is not in mixedCase
Parameter DonationGuestbook.createEntry(string,string)._alias (dataset/contracts/transaction_order/19486.sol#57) is not in mixedCase
Parameter DonationGuestbook.createEntry(string,string)._message (dataset/contracts/transaction_order/19486.sol#57) is not in mixedCase
Parameter DonationGuestbook.getEntry(uint256).entry_id (dataset/contracts/transaction_order/19486.sol#65) is not in mixedCase
Variable DonationGuestbook.running_id (dataset/contracts/transaction_order/19486.sol#17) is not in mixedCase
Variable DonationGuestbook.minimum_donation (dataset/contracts/transaction_order/19486.sol#19) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
createEntry(string,string) should be declared external:
	- DonationGuestbook.createEntry(string,string) (dataset/contracts/transaction_order/19486.sol#57-63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/19486.sol analyzed (1 contracts with 100 detectors), 15 result(s) found
