'solc --version' running
'solc ./dataset/contracts/transaction_order/22583.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ChiMarket.calcSELLoffer(uint256) (dataset/contracts/transaction_order/22583.sol#55-66) performs a multiplication on the result of a division:
	- eth_amount = (chi_amount * eth_balance) / (chi_balance + chi_amount) (dataset/contracts/transaction_order/22583.sol#62)
	- require(bool)(1000 * eth_amount >= eth_amount) (dataset/contracts/transaction_order/22583.sol#63)
ChiMarket.calcSELLoffer(uint256) (dataset/contracts/transaction_order/22583.sol#55-66) performs a multiplication on the result of a division:
	- eth_amount = (chi_amount * eth_balance) / (chi_balance + chi_amount) (dataset/contracts/transaction_order/22583.sol#62)
	- eth_amount = ((1000 - market_halfspread) * eth_amount) / 1000 (dataset/contracts/transaction_order/22583.sol#64)
ChiMarket.calcBUYoffer(uint256,uint256) (dataset/contracts/transaction_order/22583.sol#72-85) performs a multiplication on the result of a division:
	- eth_amount = (_chi_amount * eth_balance) / (chi_balance - _chi_amount) (dataset/contracts/transaction_order/22583.sol#81)
	- require(bool)(1000 * eth_amount >= eth_amount) (dataset/contracts/transaction_order/22583.sol#82)
ChiMarket.calcBUYoffer(uint256,uint256) (dataset/contracts/transaction_order/22583.sol#72-85) performs a multiplication on the result of a division:
	- eth_amount = (_chi_amount * eth_balance) / (chi_balance - _chi_amount) (dataset/contracts/transaction_order/22583.sol#81)
	- eth_amount = (1000 * eth_amount) / (1000 - market_halfspread) (dataset/contracts/transaction_order/22583.sol#83)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
ERC721Token (dataset/contracts/transaction_order/22583.sol#36-38) has incorrect ERC20 function interface:ERC721Token.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/22583.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
ChiMarket.setOwner(address) (dataset/contracts/transaction_order/22583.sol#163-165) should emit an event for: 
	- owner = _owner (dataset/contracts/transaction_order/22583.sol#164) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
ChiMarket.setSpread(uint256) (dataset/contracts/transaction_order/22583.sol#138-141) should emit an event for: 
	- market_halfspread = _halfspread (dataset/contracts/transaction_order/22583.sol#140) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
ChiMarket.moveEther(address,uint256)._target (dataset/contracts/transaction_order/22583.sol#132) lacks a zero-check on :
		- _target.transfer(_amount) (dataset/contracts/transaction_order/22583.sol#134)
ChiMarket.setOwner(address)._owner (dataset/contracts/transaction_order/22583.sol#163) lacks a zero-check on :
		- owner = _owner (dataset/contracts/transaction_order/22583.sol#164)
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
	- ^0.4.21 (dataset/contracts/transaction_order/22583.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter ChiMarket.calcSELLoffer(uint256).chi_amount (dataset/contracts/transaction_order/22583.sol#55) is not in mixedCase
Parameter ChiMarket.calcBUYoffer(uint256,uint256)._chi_amount (dataset/contracts/transaction_order/22583.sol#72) is not in mixedCase
Parameter ChiMarket.calcBUYoffer(uint256,uint256)._offset_eth (dataset/contracts/transaction_order/22583.sol#72) is not in mixedCase
Parameter ChiMarket.limitBuy(uint256)._chi_amount (dataset/contracts/transaction_order/22583.sol#90) is not in mixedCase
Parameter ChiMarket.limitSell(uint256,uint256)._chi_amount (dataset/contracts/transaction_order/22583.sol#107) is not in mixedCase
Parameter ChiMarket.limitSell(uint256,uint256)._min_eth_amount (dataset/contracts/transaction_order/22583.sol#107) is not in mixedCase
Parameter ChiMarket.moveERC20Tokens(address,address,uint256)._tokenContract (dataset/contracts/transaction_order/22583.sol#119) is not in mixedCase
Parameter ChiMarket.moveERC20Tokens(address,address,uint256)._to (dataset/contracts/transaction_order/22583.sol#119) is not in mixedCase
Parameter ChiMarket.moveERC20Tokens(address,address,uint256)._val (dataset/contracts/transaction_order/22583.sol#119) is not in mixedCase
Parameter ChiMarket.moveERC721Tokens(address,address,uint256)._tokenContract (dataset/contracts/transaction_order/22583.sol#126) is not in mixedCase
Parameter ChiMarket.moveERC721Tokens(address,address,uint256)._to (dataset/contracts/transaction_order/22583.sol#126) is not in mixedCase
Parameter ChiMarket.moveERC721Tokens(address,address,uint256)._tid (dataset/contracts/transaction_order/22583.sol#126) is not in mixedCase
Parameter ChiMarket.moveEther(address,uint256)._target (dataset/contracts/transaction_order/22583.sol#132) is not in mixedCase
Parameter ChiMarket.moveEther(address,uint256)._amount (dataset/contracts/transaction_order/22583.sol#132) is not in mixedCase
Parameter ChiMarket.setSpread(uint256)._halfspread (dataset/contracts/transaction_order/22583.sol#138) is not in mixedCase
Parameter ChiMarket.depositBoth(uint256)._chi_amount (dataset/contracts/transaction_order/22583.sol#145) is not in mixedCase
Parameter ChiMarket.withdrawBoth(uint256,uint256)._chi_amount (dataset/contracts/transaction_order/22583.sol#152) is not in mixedCase
Parameter ChiMarket.withdrawBoth(uint256,uint256)._eth_amount (dataset/contracts/transaction_order/22583.sol#152) is not in mixedCase
Parameter ChiMarket.setOwner(address)._owner (dataset/contracts/transaction_order/22583.sol#163) is not in mixedCase
Variable ChiMarket.ChiToken (dataset/contracts/transaction_order/22583.sol#41) is not in mixedCase
Variable ChiMarket.market_halfspread (dataset/contracts/transaction_order/22583.sol#43) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
ChiMarket.ChiToken (dataset/contracts/transaction_order/22583.sol#41) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/22583.sol analyzed (3 contracts with 100 detectors), 33 result(s) found
