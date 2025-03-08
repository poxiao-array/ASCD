'solc --version' running
'solc ./dataset/contracts/transaction_order/20573.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Admin.setGod(address) (dataset/contracts/transaction_order/20573.sol#32-36) should emit an event for: 
	- godAddress = _newGod (dataset/contracts/transaction_order/20573.sol#35) 
	- godAddress = _newGod (dataset/contracts/transaction_order/20573.sol#35) 
Admin.setManager(address) (dataset/contracts/transaction_order/20573.sol#40-44) should emit an event for: 
	- managerAddress = _newManager (dataset/contracts/transaction_order/20573.sol#43) 
	- managerAddress = _newManager (dataset/contracts/transaction_order/20573.sol#43) 
Admin.setBursar(address) (dataset/contracts/transaction_order/20573.sol#48-52) should emit an event for: 
	- bursarAddress = _newBursar (dataset/contracts/transaction_order/20573.sol#51) 
CryptoFamousStorage.setAuthorizedLogicContractAddress(address) (dataset/contracts/transaction_order/20573.sol#293-295) should emit an event for: 
	- authorizedLogicContractAddress = _newAuthorizedLogicContractAddress (dataset/contracts/transaction_order/20573.sol#294) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoFamousStorage.authorized_recordStashedPayout(uint256) (dataset/contracts/transaction_order/20573.sol#342-345) should emit an event for: 
	- totalStashedPayouts += msg.value (dataset/contracts/transaction_order/20573.sol#344) 
CryptoFamousStorage.authorized_recordFailedOldOwnerTransfer(address) (dataset/contracts/transaction_order/20573.sol#347-350) should emit an event for: 
	- totalFailedOldOwnerTransferAmounts += msg.value (dataset/contracts/transaction_order/20573.sol#349) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
CryptoFamousStorage.setAuthorizedLogicContractAddress(address)._newAuthorizedLogicContractAddress (dataset/contracts/transaction_order/20573.sol#293) lacks a zero-check on :
		- authorizedLogicContractAddress = _newAuthorizedLogicContractAddress (dataset/contracts/transaction_order/20573.sol#294)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint 0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.19 (dataset/contracts/transaction_order/20573.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Admin.setGod(address)._newGod (dataset/contracts/transaction_order/20573.sol#32) is not in mixedCase
Parameter Admin.setManager(address)._newManager (dataset/contracts/transaction_order/20573.sol#40) is not in mixedCase
Parameter Admin.setBursar(address)._newBursar (dataset/contracts/transaction_order/20573.sol#48) is not in mixedCase
Parameter CryptoFamousOwnership.socialIdentityToCardId(uint256,uint256)._socialNetworkType (dataset/contracts/transaction_order/20573.sol#121) is not in mixedCase
Parameter CryptoFamousOwnership.socialIdentityToCardId(uint256,uint256)._socialId (dataset/contracts/transaction_order/20573.sol#121) is not in mixedCase
Parameter CryptoFamousOwnership.lookUpClaimerAddress(uint256,address)._socialNetworkType (dataset/contracts/transaction_order/20573.sol#135) is not in mixedCase
Parameter CryptoFamousOwnership.lookUpClaimerAddress(uint256,address)._claimerAddress (dataset/contracts/transaction_order/20573.sol#135) is not in mixedCase
Parameter CryptoFamousOwnership.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/20573.sol#222) is not in mixedCase
Function CryptoFamousStorage.authorized_setCardPerkText(uint256,string) (dataset/contracts/transaction_order/20573.sol#289-291) is not in mixedCase
Parameter CryptoFamousStorage.authorized_setCardPerkText(uint256,string)._cardId (dataset/contracts/transaction_order/20573.sol#289) is not in mixedCase
Parameter CryptoFamousStorage.authorized_setCardPerkText(uint256,string)._perkText (dataset/contracts/transaction_order/20573.sol#289) is not in mixedCase
Parameter CryptoFamousStorage.setAuthorizedLogicContractAddress(address)._newAuthorizedLogicContractAddress (dataset/contracts/transaction_order/20573.sol#293) is not in mixedCase
Function CryptoFamousStorage.authorized_changeOwnership(address,address,uint256) (dataset/contracts/transaction_order/20573.sol#297-299) is not in mixedCase
Parameter CryptoFamousStorage.authorized_changeOwnership(address,address,uint256)._from (dataset/contracts/transaction_order/20573.sol#297) is not in mixedCase
Parameter CryptoFamousStorage.authorized_changeOwnership(address,address,uint256)._to (dataset/contracts/transaction_order/20573.sol#297) is not in mixedCase
Parameter CryptoFamousStorage.authorized_changeOwnership(address,address,uint256)._cardId (dataset/contracts/transaction_order/20573.sol#297) is not in mixedCase
Function CryptoFamousStorage.authorized_createCard(uint256,uint256,address,address) (dataset/contracts/transaction_order/20573.sol#301-303) is not in mixedCase
Parameter CryptoFamousStorage.authorized_createCard(uint256,uint256,address,address)._socialNetworkType (dataset/contracts/transaction_order/20573.sol#301) is not in mixedCase
Parameter CryptoFamousStorage.authorized_createCard(uint256,uint256,address,address)._socialId (dataset/contracts/transaction_order/20573.sol#301) is not in mixedCase
Parameter CryptoFamousStorage.authorized_createCard(uint256,uint256,address,address)._owner (dataset/contracts/transaction_order/20573.sol#301) is not in mixedCase
Parameter CryptoFamousStorage.authorized_createCard(uint256,uint256,address,address)._claimer (dataset/contracts/transaction_order/20573.sol#301) is not in mixedCase
Function CryptoFamousStorage.authorized_updateSaleInfo(uint256,uint256) (dataset/contracts/transaction_order/20573.sol#305-307) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateSaleInfo(uint256,uint256)._cardId (dataset/contracts/transaction_order/20573.sol#305) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateSaleInfo(uint256,uint256)._sentValue (dataset/contracts/transaction_order/20573.sol#305) is not in mixedCase
Function CryptoFamousStorage.authorized_updateCardClaimerAddress(uint256,address) (dataset/contracts/transaction_order/20573.sol#309-316) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateCardClaimerAddress(uint256,address)._cardId (dataset/contracts/transaction_order/20573.sol#309) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateCardClaimerAddress(uint256,address)._claimerAddress (dataset/contracts/transaction_order/20573.sol#309) is not in mixedCase
Function CryptoFamousStorage.authorized_updateCardReserved1(uint256,uint8) (dataset/contracts/transaction_order/20573.sol#318-324) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateCardReserved1(uint256,uint8)._cardId (dataset/contracts/transaction_order/20573.sol#318) is not in mixedCase
Parameter CryptoFamousStorage.authorized_updateCardReserved1(uint256,uint8)._reserved (dataset/contracts/transaction_order/20573.sol#318) is not in mixedCase
Function CryptoFamousStorage.authorized_triggerStashedPayoutTransfer(uint256) (dataset/contracts/transaction_order/20573.sol#326-340) is not in mixedCase
Parameter CryptoFamousStorage.authorized_triggerStashedPayoutTransfer(uint256)._cardId (dataset/contracts/transaction_order/20573.sol#326) is not in mixedCase
Function CryptoFamousStorage.authorized_recordStashedPayout(uint256) (dataset/contracts/transaction_order/20573.sol#342-345) is not in mixedCase
Parameter CryptoFamousStorage.authorized_recordStashedPayout(uint256)._cardId (dataset/contracts/transaction_order/20573.sol#342) is not in mixedCase
Function CryptoFamousStorage.authorized_recordFailedOldOwnerTransfer(address) (dataset/contracts/transaction_order/20573.sol#347-350) is not in mixedCase
Parameter CryptoFamousStorage.authorized_recordFailedOldOwnerTransfer(address)._oldOwner (dataset/contracts/transaction_order/20573.sol#347) is not in mixedCase
Function CryptoFamousStorage.authorized_recordPlatformFee() (dataset/contracts/transaction_order/20573.sol#353-355) is not in mixedCase
Parameter CryptoFamousStorage.bursarPayOutNetContractBalance(address)._to (dataset/contracts/transaction_order/20573.sol#364) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/20573.sol analyzed (5 contracts with 100 detectors), 47 result(s) found
