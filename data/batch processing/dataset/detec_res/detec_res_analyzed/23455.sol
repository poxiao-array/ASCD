'solc --version' running
'solc ./dataset/contracts/transaction_order/23455.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
PGM_Coin.amountCollected (dataset/contracts/transaction_order/23455.sol#13) is never initialized. It is used in:
	- PGM_Coin.getCollectedAmount() (dataset/contracts/transaction_order/23455.sol#173-176)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
PGM_Coin (dataset/contracts/transaction_order/23455.sol#3-262) has incorrect ERC20 function interface:PGM_Coin.transfer(address,uint256) (dataset/contracts/transaction_order/23455.sol#215-218)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
PGM_Coin.transferOwnership(address) (dataset/contracts/transaction_order/23455.sol#189-194) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/23455.sol#193) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
PGM_Coin.setTransferStatus(uint256) (dataset/contracts/transaction_order/23455.sol#111-114) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/23455.sol#113) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
PGM_Coin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/23455.sol#189) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/23455.sol#193)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
PGM_Coin.totalSupply() (dataset/contracts/transaction_order/23455.sol#183-186) is never used and should be removed
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
	- ^0.4.19 (dataset/contracts/transaction_order/23455.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/23455.sol#2) is not in CapWords
Contract PGM_Coin (dataset/contracts/transaction_order/23455.sol#3-262) is not in CapWords
Parameter PGM_Coin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/23455.sol#61) is not in mixedCase
Parameter PGM_Coin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/23455.sol#61) is not in mixedCase
Function PGM_Coin.withdraw_all() (dataset/contracts/transaction_order/23455.sol#134-145) is not in mixedCase
Function PGM_Coin.adm_trasfer(address,address,uint256) (dataset/contracts/transaction_order/23455.sol#160-163) is not in mixedCase
Parameter PGM_Coin.adm_trasfer(address,address,uint256)._from (dataset/contracts/transaction_order/23455.sol#160) is not in mixedCase
Parameter PGM_Coin.adm_trasfer(address,address,uint256)._to (dataset/contracts/transaction_order/23455.sol#160) is not in mixedCase
Parameter PGM_Coin.adm_trasfer(address,address,uint256)._value (dataset/contracts/transaction_order/23455.sol#160) is not in mixedCase
Parameter PGM_Coin.balanceOf(address)._owner (dataset/contracts/transaction_order/23455.sol#178) is not in mixedCase
Parameter PGM_Coin.transfer(address,uint256)._to (dataset/contracts/transaction_order/23455.sol#215) is not in mixedCase
Parameter PGM_Coin.transfer(address,uint256)._value (dataset/contracts/transaction_order/23455.sol#215) is not in mixedCase
Parameter PGM_Coin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23455.sol#220) is not in mixedCase
Parameter PGM_Coin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23455.sol#220) is not in mixedCase
Parameter PGM_Coin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/23455.sol#220) is not in mixedCase
Parameter PGM_Coin.approve(address,uint256)._spender (dataset/contracts/transaction_order/23455.sol#228) is not in mixedCase
Parameter PGM_Coin.approve(address,uint256)._value (dataset/contracts/transaction_order/23455.sol#228) is not in mixedCase
Parameter PGM_Coin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/23455.sol#234) is not in mixedCase
Parameter PGM_Coin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/23455.sol#234) is not in mixedCase
Parameter PGM_Coin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/23455.sol#234) is not in mixedCase
Parameter PGM_Coin.burn(uint256)._value (dataset/contracts/transaction_order/23455.sol#243) is not in mixedCase
Parameter PGM_Coin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/23455.sol#252) is not in mixedCase
Parameter PGM_Coin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/23455.sol#252) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
PGM_Coin.PGM_Coin() (dataset/contracts/transaction_order/23455.sol#33-48) uses literals with too many digits:
	- totalSupply = 1000000000000000000000000000 (dataset/contracts/transaction_order/23455.sol#35)
PGM_Coin.withdraw_all() (dataset/contracts/transaction_order/23455.sol#134-145) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/23455.sol#138)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
PGM_Coin.amountCollected (dataset/contracts/transaction_order/23455.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/23455.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- PGM_Coin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/23455.sol#234-241)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23455.sol analyzed (2 contracts with 100 detectors), 36 result(s) found
