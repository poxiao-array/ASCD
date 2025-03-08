'solc --version' running
'solc ./dataset/contracts/transaction_order/25737.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/25737.sol:
./dataset/contracts/transaction_order/25737.sol:139:17: Warning: Use of the "var" keyword is deprecated.
                var amountWith = this.balance - 10000000000000000;
                ^------------^
./dataset/contracts/transaction_order/25737.sol:152:17: Warning: Use of the "var" keyword is deprecated.
                var totalTokenToMint = tokensToMint * (10 ** 18);
                ^------------------^

INFO:Detectors:
Ethereum_Cash_Pro_Coin.amountCollected (dataset/contracts/transaction_order/25737.sol#13) is never initialized. It is used in:
	- Ethereum_Cash_Pro_Coin.getCollectedAmount() (dataset/contracts/transaction_order/25737.sol#174-177)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-state-variables
INFO:Detectors:
Ethereum_Cash_Pro_Coin (dataset/contracts/transaction_order/25737.sol#3-263) has incorrect ERC20 function interface:Ethereum_Cash_Pro_Coin.transfer(address,uint256) (dataset/contracts/transaction_order/25737.sol#216-219)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Ethereum_Cash_Pro_Coin.transferOwnership(address) (dataset/contracts/transaction_order/25737.sol#190-195) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/25737.sol#194) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Ethereum_Cash_Pro_Coin.setTransferStatus(uint256) (dataset/contracts/transaction_order/25737.sol#112-115) should emit an event for: 
	- allowTransferToken = status (dataset/contracts/transaction_order/25737.sol#114) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
Ethereum_Cash_Pro_Coin.transferOwnership(address).newOwner (dataset/contracts/transaction_order/25737.sol#190) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/25737.sol#194)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Ethereum_Cash_Pro_Coin.totalSupply() (dataset/contracts/transaction_order/25737.sol#184-187) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
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
	- ^0.4.20 (dataset/contracts/transaction_order/25737.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/25737.sol#2) is not in CapWords
Contract Ethereum_Cash_Pro_Coin (dataset/contracts/transaction_order/25737.sol#3-263) is not in CapWords
Parameter Ethereum_Cash_Pro_Coin.sellOffline(address,uint256).rec_address (dataset/contracts/transaction_order/25737.sol#62) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.sellOffline(address,uint256).token_amount (dataset/contracts/transaction_order/25737.sol#62) is not in mixedCase
Function Ethereum_Cash_Pro_Coin.withdraw_all() (dataset/contracts/transaction_order/25737.sol#135-146) is not in mixedCase
Function Ethereum_Cash_Pro_Coin.adm_trasfer(address,address,uint256) (dataset/contracts/transaction_order/25737.sol#161-164) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.adm_trasfer(address,address,uint256)._from (dataset/contracts/transaction_order/25737.sol#161) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.adm_trasfer(address,address,uint256)._to (dataset/contracts/transaction_order/25737.sol#161) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.adm_trasfer(address,address,uint256)._value (dataset/contracts/transaction_order/25737.sol#161) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.balanceOf(address)._owner (dataset/contracts/transaction_order/25737.sol#179) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.transfer(address,uint256)._to (dataset/contracts/transaction_order/25737.sol#216) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.transfer(address,uint256)._value (dataset/contracts/transaction_order/25737.sol#216) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/25737.sol#221) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/25737.sol#221) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/25737.sol#221) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.approve(address,uint256)._spender (dataset/contracts/transaction_order/25737.sol#229) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.approve(address,uint256)._value (dataset/contracts/transaction_order/25737.sol#229) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/25737.sol#235) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/25737.sol#235) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/25737.sol#235) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.burn(uint256)._value (dataset/contracts/transaction_order/25737.sol#244) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/25737.sol#253) is not in mixedCase
Parameter Ethereum_Cash_Pro_Coin.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/25737.sol#253) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Ethereum_Cash_Pro_Coin.Ethereum_Cash_Pro_Coin() (dataset/contracts/transaction_order/25737.sol#33-49) uses literals with too many digits:
	- totalSupply = 200000000000000000000000000000 (dataset/contracts/transaction_order/25737.sol#35)
Ethereum_Cash_Pro_Coin.withdraw_all() (dataset/contracts/transaction_order/25737.sol#135-146) uses literals with too many digits:
	- amountWith = this.balance - 10000000000000000 (dataset/contracts/transaction_order/25737.sol#139)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Ethereum_Cash_Pro_Coin.amountCollected (dataset/contracts/transaction_order/25737.sol#13) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/25737.sol#2)
approveAndCall(address,uint256,bytes) should be declared external:
	- Ethereum_Cash_Pro_Coin.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/25737.sol#235-242)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/25737.sol analyzed (2 contracts with 100 detectors), 36 result(s) found
