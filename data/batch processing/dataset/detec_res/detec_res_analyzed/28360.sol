'solc --version' running
'solc ./dataset/contracts/transaction_order/28360.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
RCKT_Coin.amountCollected (dataset/contracts/transaction_order/28360.sol#13) is never initialized. It is used in:
	- RCKT_Coin.getCollectedAmount() (dataset/contracts/transaction_order/28360.sol#174-177)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
RCKT_Coin (dataset/contracts/transaction_order/28360.sol#3-263) has incorrect ERC20 function interface:RCKT_Coin.transfer(address,uint256) (dataset/contracts/transaction_order/28360.sol#216-219)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
RCKT_Coin.transferOwnership(address) (dataset/contracts/transaction_order/28360.sol#190-195) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/28360.sol#194) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
RCKT_Coin.setTransferStatus(uint256) (dataset/contracts/transaction_order/28360.sol#112-115) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/28360.sol#114) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
RCKT_Coin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/28360.sol#190) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/28360.sol#194)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
RCKT_Coin.totalSupply() (dataset/contracts/transaction_order/28360.sol#184-187) is never used and should be removed
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
	- ^0.4.19 (dataset/contracts/transaction_order/28360.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/28360.sol#2) is not in CapWords
Contract RCKT_Coin (dataset/contracts/transaction_order/28360.sol#3-263) is not in CapWords
Parameter RCKT_Coin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/28360.sol#62) is not in mixedCase
Parameter RCKT_Coin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/28360.sol#62) is not in mixedCase
Function RCKT_Coin.withdraw_all() (dataset/contracts/transaction_order/28360.sol#135-146) is not in mixedCase
Function RCKT_Coin.adm_trasfer(address,address,uint256) (dataset/contracts/transaction_order/28360.sol#161-164) is not in mixedCase
Parameter RCKT_Coin.adm_trasfer(address,address,uint256)._from (dataset/contracts/transaction_order/28360.sol#161) is not in mixedCase
Parameter RCKT_Coin.adm_trasfer(address,address,uint256)._to (dataset/contracts/transaction_order/28360.sol#161) is not in mixedCase
Parameter RCKT_Coin.adm_trasfer(address,address,uint256)._value (dataset/contracts/transaction_order/28360.sol#161) is not in mixedCase
Parameter RCKT_Coin.balanceOf(address)._owner (dataset/contracts/transaction_order/28360.sol#179) is not in mixedCase
Parameter RCKT_Coin.transfer(address,uint256)._to (dataset/contracts/transaction_order/28360.sol#216) is not in mixedCase
Parameter RCKT_Coin.transfer(address,uint256)._value (dataset/contracts/transaction_order/28360.sol#216) is not in mixedCase
Parameter RCKT_Coin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/28360.sol#221) is not in mixedCase
Parameter RCKT_Coin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/28360.sol#221) is not in mixedCase
Parameter RCKT_Coin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/28360.sol#221) is not in mixedCase
Parameter RCKT_Coin.approve(address,uint256)._spender (dataset/contracts/transaction_order/28360.sol#229) is not in mixedCase
Parameter RCKT_Coin.approve(address,uint256)._value (dataset/contracts/transaction_order/28360.sol#229) is not in mixedCase
Parameter RCKT_Coin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/28360.sol#235) is not in mixedCase
Parameter RCKT_Coin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/28360.sol#235) is not in mixedCase
Parameter RCKT_Coin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/28360.sol#235) is not in mixedCase
Parameter RCKT_Coin.burn(uint256)._value (dataset/contracts/transaction_order/28360.sol#244) is not in mixedCase
Parameter RCKT_Coin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/28360.sol#253) is not in mixedCase
Parameter RCKT_Coin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/28360.sol#253) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
RCKT_Coin.RCKT_Coin() (dataset/contracts/transaction_order/28360.sol#33-48) uses literals with too many digits:
	- totalSupply = 20000000000000000000000000 (dataset/contracts/transaction_order/28360.sol#35)
RCKT_Coin.withdraw_all() (dataset/contracts/transaction_order/28360.sol#135-146) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/28360.sol#139)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
RCKT_Coin.amountCollected (dataset/contracts/transaction_order/28360.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/28360.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- RCKT_Coin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/28360.sol#235-242)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/28360.sol analyzed (2 contracts with 100 detectors), 36 result(s) found
