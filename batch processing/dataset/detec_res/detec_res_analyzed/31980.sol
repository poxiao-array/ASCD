'solc --version' running
'solc ./dataset/contracts/transaction_order/31980.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
IOCT_Coin.fallback() (dataset/contracts/transaction_order/31980.sol#57-79) performs a multiplication on the result of a division:
	- finalTokens = (msg.value * ethRate) / icoTokenPrice (dataset/contracts/transaction_order/31980.sol#61)
	- finalTokens = finalTokens * (10 ** 2) (dataset/contracts/transaction_order/31980.sol#62)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
IOCT_Coin (dataset/contracts/transaction_order/31980.sol#3-274) has incorrect ERC20 function interface:IOCT_Coin.transfer(address,uint256) (dataset/contracts/transaction_order/31980.sol#227-230)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
IOCT_Coin.transferOwnership(address) (dataset/contracts/transaction_order/31980.sol#201-206) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/31980.sol#205) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
IOCT_Coin.setTransferStatus(uint256) (dataset/contracts/transaction_order/31980.sol#131-134) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/31980.sol#133) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
IOCT_Coin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/31980.sol#201) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/31980.sol#205)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
IOCT_Coin.freezeAccount(address,bool) (dataset/contracts/transaction_order/31980.sol#178-182) is never used and should be removed
IOCT_Coin.totalSupply() (dataset/contracts/transaction_order/31980.sol#195-198) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.19 (dataset/contracts/transaction_order/31980.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/31980.sol#2) is not in CapWords
Contract IOCT_Coin (dataset/contracts/transaction_order/31980.sol#3-274) is not in CapWords
Parameter IOCT_Coin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/31980.sol#81) is not in mixedCase
Parameter IOCT_Coin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/31980.sol#81) is not in mixedCase
Function IOCT_Coin.withdraw_all() (dataset/contracts/transaction_order/31980.sol#154-165) is not in mixedCase
Parameter IOCT_Coin.balanceOf(address)._owner (dataset/contracts/transaction_order/31980.sol#190) is not in mixedCase
Parameter IOCT_Coin.transfer(address,uint256)._to (dataset/contracts/transaction_order/31980.sol#227) is not in mixedCase
Parameter IOCT_Coin.transfer(address,uint256)._value (dataset/contracts/transaction_order/31980.sol#227) is not in mixedCase
Parameter IOCT_Coin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/31980.sol#232) is not in mixedCase
Parameter IOCT_Coin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/31980.sol#232) is not in mixedCase
Parameter IOCT_Coin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/31980.sol#232) is not in mixedCase
Parameter IOCT_Coin.approve(address,uint256)._spender (dataset/contracts/transaction_order/31980.sol#240) is not in mixedCase
Parameter IOCT_Coin.approve(address,uint256)._value (dataset/contracts/transaction_order/31980.sol#240) is not in mixedCase
Parameter IOCT_Coin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/31980.sol#246) is not in mixedCase
Parameter IOCT_Coin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/31980.sol#246) is not in mixedCase
Parameter IOCT_Coin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/31980.sol#246) is not in mixedCase
Parameter IOCT_Coin.burn(uint256)._value (dataset/contracts/transaction_order/31980.sol#255) is not in mixedCase
Parameter IOCT_Coin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/31980.sol#264) is not in mixedCase
Parameter IOCT_Coin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/31980.sol#264) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
IOCT_Coin.IOCT_Coin() (dataset/contracts/transaction_order/31980.sol#33-48) uses literals with too many digits:
	- totalSupply = 15000000000000000000000000 (dataset/contracts/transaction_order/31980.sol#35)
IOCT_Coin.withdraw_all() (dataset/contracts/transaction_order/31980.sol#154-165) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/31980.sol#158)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/31980.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- IOCT_Coin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/31980.sol#246-253)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/31980.sol analyzed (2 contracts with 100 detectors), 32 result(s) found
