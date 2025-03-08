'solc --version' running
'solc ./dataset/contracts/transaction_order/6172.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
ERC20NoReturn (dataset/contracts/transaction_order/6172.sol#273-286) has incorrect ERC20 function interface:ERC20NoReturn.transfer(address,uint256) (dataset/contracts/transaction_order/6172.sol#280)
ERC20NoReturn (dataset/contracts/transaction_order/6172.sol#273-286) has incorrect ERC20 function interface:ERC20NoReturn.approve(address,uint256) (dataset/contracts/transaction_order/6172.sol#281)
ERC20NoReturn (dataset/contracts/transaction_order/6172.sol#273-286) has incorrect ERC20 function interface:ERC20NoReturn.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/6172.sol#282)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
KyberNetworkAdapter.supportsTradingPair(address,address) (dataset/contracts/transaction_order/6172.sol#344-350) ignores return value by (price,None) = this.getPrice(ERC20Extended(_srcAddress),ERC20Extended(_destAddress),amount) (dataset/contracts/transaction_order/6172.sol#348)
KyberNetworkAdapter.getPrice(ERC20Extended,ERC20Extended,uint256) (dataset/contracts/transaction_order/6172.sol#366-368) ignores return value by kyber.getExpectedRate(_sourceAddress,_destAddress,_amount) (dataset/contracts/transaction_order/6172.sol#367)
KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address) (dataset/contracts/transaction_order/6172.sol#370-397) ignores return value by (None,slippageRate) = kyber.getExpectedRate(ETH_TOKEN_ADDRESS,_token,_amount) (dataset/contracts/transaction_order/6172.sol#378)
KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address) (dataset/contracts/transaction_order/6172.sol#370-397) ignores return value by kyber.trade.value(msg.value)(ETH_TOKEN_ADDRESS,_amount,_token,_depositAddress,2 ** 256 - 1,slippageRate,walletId) (dataset/contracts/transaction_order/6172.sol#385-392)
KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address) (dataset/contracts/transaction_order/6172.sol#398-425) ignores return value by (None,slippageRate) = kyber.getExpectedRate(_token,ETH_TOKEN_ADDRESS,_amount) (dataset/contracts/transaction_order/6172.sol#404)
KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address) (dataset/contracts/transaction_order/6172.sol#398-425) ignores return value by kyber.trade(_token,_amount,ETH_TOKEN_ADDRESS,_depositAddress,2 ** 256 - 1,slippageRate,walletId) (dataset/contracts/transaction_order/6172.sol#412-419)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-return
INFO:Detectors:
KyberNetworkAdapter.setExchangeAdapterManager(address) (dataset/contracts/transaction_order/6172.sol#312-314) should emit an event for: 
	- exchangeAdapterManager = _exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#313) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
KyberNetworkAdapter.constructor(KyberNetworkInterface,address)._exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#305) lacks a zero-check on :
		- exchangeAdapterManager = _exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#308)
KyberNetworkAdapter.setExchangeAdapterManager(address)._exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#312) lacks a zero-check on :
		- exchangeAdapterManager = _exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#313)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
KyberNetworkAdapter.getExpectAmount(uint256,uint256,uint256) (dataset/contracts/transaction_order/6172.sol#330-332) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint 0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- 0.4.24 (dataset/contracts/transaction_order/6172.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Ownable.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/6172.sol#229) is not in mixedCase
Parameter KyberNetworkAdapter.setExchangeAdapterManager(address)._exchangeAdapterManager (dataset/contracts/transaction_order/6172.sol#312) is not in mixedCase
Parameter KyberNetworkAdapter.setExchangeDetails(bytes32,bytes32)._id (dataset/contracts/transaction_order/6172.sol#316) is not in mixedCase
Parameter KyberNetworkAdapter.setExchangeDetails(bytes32,bytes32)._name (dataset/contracts/transaction_order/6172.sol#316) is not in mixedCase
Parameter KyberNetworkAdapter.configAdapter(KyberNetworkInterface,address)._kyber (dataset/contracts/transaction_order/6172.sol#334) is not in mixedCase
Parameter KyberNetworkAdapter.configAdapter(KyberNetworkInterface,address)._walletId (dataset/contracts/transaction_order/6172.sol#334) is not in mixedCase
Parameter KyberNetworkAdapter.supportsTradingPair(address,address)._srcAddress (dataset/contracts/transaction_order/6172.sol#344) is not in mixedCase
Parameter KyberNetworkAdapter.supportsTradingPair(address,address)._destAddress (dataset/contracts/transaction_order/6172.sol#344) is not in mixedCase
Parameter KyberNetworkAdapter.getPrice(ERC20Extended,ERC20Extended,uint256)._sourceAddress (dataset/contracts/transaction_order/6172.sol#366) is not in mixedCase
Parameter KyberNetworkAdapter.getPrice(ERC20Extended,ERC20Extended,uint256)._destAddress (dataset/contracts/transaction_order/6172.sol#366) is not in mixedCase
Parameter KyberNetworkAdapter.getPrice(ERC20Extended,ERC20Extended,uint256)._amount (dataset/contracts/transaction_order/6172.sol#366) is not in mixedCase
Parameter KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address)._token (dataset/contracts/transaction_order/6172.sol#370) is not in mixedCase
Parameter KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address)._amount (dataset/contracts/transaction_order/6172.sol#370) is not in mixedCase
Parameter KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address)._minimumRate (dataset/contracts/transaction_order/6172.sol#370) is not in mixedCase
Parameter KyberNetworkAdapter.buyToken(ERC20Extended,uint256,uint256,address)._depositAddress (dataset/contracts/transaction_order/6172.sol#370) is not in mixedCase
Parameter KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address)._token (dataset/contracts/transaction_order/6172.sol#398) is not in mixedCase
Parameter KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address)._amount (dataset/contracts/transaction_order/6172.sol#398) is not in mixedCase
Parameter KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address)._minimumRate (dataset/contracts/transaction_order/6172.sol#398) is not in mixedCase
Parameter KyberNetworkAdapter.sellToken(ERC20Extended,uint256,uint256,address)._depositAddress (dataset/contracts/transaction_order/6172.sol#398) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/6172.sol analyzed (12 contracts with 100 detectors), 34 result(s) found
