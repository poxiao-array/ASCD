'solc --version' running
'solc ./dataset/contracts/transaction_order/26550.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26550.sol:
./dataset/contracts/transaction_order/26550.sol:98:5: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    address _to,
    ^---------^
./dataset/contracts/transaction_order/26550.sol:99:5: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    uint256 _tokenId
    ^--------------^

INFO:Detectors:
DailyEtherToken._payout(address) (dataset/contracts/transaction_order/26550.sol#247-253) sends eth to arbitrary user
	Dangerous calls:
	- roleAdminAddress.transfer(this.balance) (dataset/contracts/transaction_order/26550.sol#249)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/26550.sol#251)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
DailyEtherToken (dataset/contracts/transaction_order/26550.sol#28-255) contract sets array length with a user-controlled value:
	- participants.push(_p) (dataset/contracts/transaction_order/26550.sol#187)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
DailyEtherToken (dataset/contracts/transaction_order/26550.sol#28-255) has incorrect ERC20 function interface:ERC721.approve(address,uint256) (dataset/contracts/transaction_order/26550.sol#8)
DailyEtherToken (dataset/contracts/transaction_order/26550.sol#28-255) has incorrect ERC20 function interface:DailyEtherToken.approve(address,uint256) (dataset/contracts/transaction_order/26550.sol#97-103)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
DailyEtherToken.setAdmin(address) (dataset/contracts/transaction_order/26550.sol#207-210) should emit an event for: 
	- roleAdminAddress = _newAdmin (dataset/contracts/transaction_order/26550.sol#209) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
DailyEtherToken.initBet(uint256,string) (dataset/contracts/transaction_order/26550.sol#213-216) should emit an event for: 
	- ticketPrice = _ticketPriceWei (dataset/contracts/transaction_order/26550.sol#214) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
DailyEtherToken.closeBet(uint256) (dataset/contracts/transaction_order/26550.sol#139-168) has external calls inside a loop: participants[i].user_address.transfer(paymentPerParticipant) (dataset/contracts/transaction_order/26550.sol#164)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
DailyEtherToken.closeBet(uint256) (dataset/contracts/transaction_order/26550.sol#139-168) compares to a boolean constant:
	-require(bool)(isLocked == true) (dataset/contracts/transaction_order/26550.sol#142)
DailyEtherToken.closeBet(uint256) (dataset/contracts/transaction_order/26550.sol#139-168) compares to a boolean constant:
	-require(bool)(isClosed == false) (dataset/contracts/transaction_order/26550.sol#145)
DailyEtherToken.bet(uint256) (dataset/contracts/transaction_order/26550.sol#171-193) compares to a boolean constant:
	-require(bool)(isLocked == false) (dataset/contracts/transaction_order/26550.sol#174)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/26550.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter DailyEtherToken.balanceOf(address)._owner (dataset/contracts/transaction_order/26550.sol#108) is not in mixedCase
Parameter DailyEtherToken.payout(address)._to (dataset/contracts/transaction_order/26550.sol#121) is not in mixedCase
Parameter DailyEtherToken.getParticipant(uint256)._index (dataset/contracts/transaction_order/26550.sol#127) is not in mixedCase
Parameter DailyEtherToken.closeBet(uint256)._answerId (dataset/contracts/transaction_order/26550.sol#139) is not in mixedCase
Parameter DailyEtherToken.bet(uint256)._answerId (dataset/contracts/transaction_order/26550.sol#171) is not in mixedCase
Parameter DailyEtherToken.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/26550.sol#207) is not in mixedCase
Parameter DailyEtherToken.initBet(uint256,string)._ticketPriceWei (dataset/contracts/transaction_order/26550.sol#213) is not in mixedCase
Parameter DailyEtherToken.initBet(uint256,string)._betTitle (dataset/contracts/transaction_order/26550.sol#213) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Loop condition i < participants.length (dataset/contracts/transaction_order/26550.sol#160) should use cached array length instead of referencing `length` member of the storage array.
 Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cache-array-length
INFO:Detectors:
initBet(uint256,string) should be declared external:
	- DailyEtherToken.initBet(uint256,string) (dataset/contracts/transaction_order/26550.sol#213-216)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26550.sol analyzed (3 contracts with 100 detectors), 22 result(s) found
