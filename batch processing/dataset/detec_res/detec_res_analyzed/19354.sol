'solc --version' running
'solc ./dataset/contracts/transaction_order/19354.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoThreeKingdoms.withdrawAll() (dataset/contracts/transaction_order/19354.sol#77-79) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(address(this).balance) (dataset/contracts/transaction_order/19354.sol#78)
CryptoThreeKingdoms.withdrawAmount(uint256) (dataset/contracts/transaction_order/19354.sol#81-83) sends eth to arbitrary user
	Dangerous calls:
	- msg.sender.transfer(_amount) (dataset/contracts/transaction_order/19354.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CryptoThreeKingdoms.setOwner(address) (dataset/contracts/transaction_order/19354.sol#59-61) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/19354.sol#60) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoThreeKingdoms.setOwner(address)._owner (dataset/contracts/transaction_order/19354.sol#59) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/19354.sol#60)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
CryptoThreeKingdoms.approve(address,uint256) (dataset/contracts/transaction_order/19354.sol#133-146) has costly operations inside a loop:
	- delete approvedOfToken[_tokenId] (dataset/contracts/transaction_order/19354.sol#139)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- ^0.4.21 (dataset/contracts/transaction_order/19354.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CryptoThreeKingdoms.setOwner(address)._owner (dataset/contracts/transaction_order/19354.sol#59) is not in mixedCase
Parameter CryptoThreeKingdoms.addAdmin(address)._admin (dataset/contracts/transaction_order/19354.sol#63) is not in mixedCase
Parameter CryptoThreeKingdoms.removeAdmin(address)._admin (dataset/contracts/transaction_order/19354.sol#67) is not in mixedCase
Parameter CryptoThreeKingdoms.withdrawAmount(uint256)._amount (dataset/contracts/transaction_order/19354.sol#81) is not in mixedCase
Parameter CryptoThreeKingdoms.balanceOf(address)._owner (dataset/contracts/transaction_order/19354.sol#99) is not in mixedCase
Parameter CryptoThreeKingdoms.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/19354.sol#111) is not in mixedCase
Parameter CryptoThreeKingdoms.tokensOf(address)._owner (dataset/contracts/transaction_order/19354.sol#115) is not in mixedCase
Parameter CryptoThreeKingdoms.approvedFor(uint256)._tokenId (dataset/contracts/transaction_order/19354.sol#129) is not in mixedCase
Parameter CryptoThreeKingdoms.approve(address,uint256)._to (dataset/contracts/transaction_order/19354.sol#133) is not in mixedCase
Parameter CryptoThreeKingdoms.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/19354.sol#133) is not in mixedCase
Parameter CryptoThreeKingdoms.transfer(address,uint256)._to (dataset/contracts/transaction_order/19354.sol#149) is not in mixedCase
Parameter CryptoThreeKingdoms.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/19354.sol#149) is not in mixedCase
Parameter CryptoThreeKingdoms.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/19354.sol#154) is not in mixedCase
Parameter CryptoThreeKingdoms.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/19354.sol#154) is not in mixedCase
Parameter CryptoThreeKingdoms.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/19354.sol#154) is not in mixedCase
Parameter CryptoThreeKingdoms.isAdmin(address)._admin (dataset/contracts/transaction_order/19354.sol#175) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < listedTokens.length (dataset/contracts/transaction_order/19354.sol#119) should use cached array length instead of referencing `length` member of the storage array.
 Loop condition i < listedTokens.length (dataset/contracts/transaction_order/19354.sol#102) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Slither:./dataset/contracts/transaction_order/19354.sol analyzed (2 contracts with 100 detectors), 25 result(s) found
