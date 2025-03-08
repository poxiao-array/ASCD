'solc --version' running
'solc ./dataset/contracts/transaction_order/15397.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Crowdsale.salvageTokensFromContract(address,address,uint256) (dataset/contracts/transaction_order/15397.sol#246-248) ignores return value by ERC20TokenInterface(_tokenAddress).transfer(_to,_amount) (dataset/contracts/transaction_order/15397.sol#247)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
Crowdsale.calculateEthToToken(uint256,uint256).bonusTokens (dataset/contracts/transaction_order/15397.sol#151) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
Crowdsale.processTransaction(address,uint256) (dataset/contracts/transaction_order/15397.sol#166-244) has a high cyclomatic complexity (14).
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cyclomatic-complexity
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/15397.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Owned.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/15397.sol#16) is not in mixedCase
Parameter Crowdsale.refundTransaction(bool)._stateChanged (dataset/contracts/transaction_order/15397.sol#132) is not in mixedCase
Parameter Crowdsale.setEthToTokenConversion(uint256)._ratio (dataset/contracts/transaction_order/15397.sol#140) is not in mixedCase
Parameter Crowdsale.setMaxCap(uint256)._maxCap (dataset/contracts/transaction_order/15397.sol#145) is not in mixedCase
Parameter Crowdsale.calculateEthToToken(uint256,uint256)._eth (dataset/contracts/transaction_order/15397.sol#150) is not in mixedCase
Parameter Crowdsale.calculateEthToToken(uint256,uint256)._bonus (dataset/contracts/transaction_order/15397.sol#150) is not in mixedCase
Parameter Crowdsale.calculateTokenToEth(uint256,uint256)._token (dataset/contracts/transaction_order/15397.sol#158) is not in mixedCase
Parameter Crowdsale.calculateTokenToEth(uint256,uint256)._bonus (dataset/contracts/transaction_order/15397.sol#158) is not in mixedCase
Parameter Crowdsale.processTransaction(address,uint256)._contributor (dataset/contracts/transaction_order/15397.sol#166) is not in mixedCase
Parameter Crowdsale.processTransaction(address,uint256)._amount (dataset/contracts/transaction_order/15397.sol#166) is not in mixedCase
Parameter Crowdsale.salvageTokensFromContract(address,address,uint256)._tokenAddress (dataset/contracts/transaction_order/15397.sol#246) is not in mixedCase
Parameter Crowdsale.salvageTokensFromContract(address,address,uint256)._to (dataset/contracts/transaction_order/15397.sol#246) is not in mixedCase
Parameter Crowdsale.salvageTokensFromContract(address,address,uint256)._amount (dataset/contracts/transaction_order/15397.sol#246) is not in mixedCase
Parameter Crowdsale.setCrowdsaleStartBlock(uint256)._block (dataset/contracts/transaction_order/15397.sol#261) is not in mixedCase
Parameter Crowdsale.setCrowdsaleEndBlock(uint256)._block (dataset/contracts/transaction_order/15397.sol#266) is not in mixedCase
Parameter Crowdsale.isAddressVerified(address)._address (dataset/contracts/transaction_order/15397.sol#271) is not in mixedCase
Parameter Crowdsale.getContributorData(address)._contributor (dataset/contracts/transaction_order/15397.sol#279) is not in mixedCase
Parameter Crowdsale.addAddress(address,uint256)._newAddress (dataset/contracts/transaction_order/15397.sol#284) is not in mixedCase
Parameter Crowdsale.addAddress(address,uint256)._tier (dataset/contracts/transaction_order/15397.sol#284) is not in mixedCase
Parameter Crowdsale.removeAddress(address)._oldAddress (dataset/contracts/transaction_order/15397.sol#290) is not in mixedCase
Parameter Crowdsale.batchAddAddresses(address[],uint256[])._addresses (dataset/contracts/transaction_order/15397.sol#296) is not in mixedCase
Parameter Crowdsale.batchAddAddresses(address[],uint256[])._tiers (dataset/contracts/transaction_order/15397.sol#296) is not in mixedCase
Enum Crowdsale.state (dataset/contracts/transaction_order/15397.sol#56) is not in CapWords
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MoneyRebelCrowdsaleContract.constructor() (dataset/contracts/transaction_order/15397.sol#307-329) uses literals with too many digits:
	- tierList[4] = Tier(2 * 10 ** 17,100000 * 10 ** 18,0,true) (dataset/contracts/transaction_order/15397.sol#324)
MoneyRebelCrowdsaleContract.constructor() (dataset/contracts/transaction_order/15397.sol#307-329) uses literals with too many digits:
	- tierList[5] = Tier(2 * 10 ** 17,100000 * 10 ** 18,8,true) (dataset/contracts/transaction_order/15397.sol#325)
MoneyRebelCrowdsaleContract.constructor() (dataset/contracts/transaction_order/15397.sol#307-329) uses literals with too many digits:
	- tierList[6] = Tier(2 * 10 ** 17,100000 * 10 ** 18,10,true) (dataset/contracts/transaction_order/15397.sol#326)
MoneyRebelCrowdsaleContract.constructor() (dataset/contracts/transaction_order/15397.sol#307-329) uses literals with too many digits:
	- tierList[7] = Tier(2 * 10 ** 17,100000 * 10 ** 18,12,true) (dataset/contracts/transaction_order/15397.sol#327)
MoneyRebelCrowdsaleContract.constructor() (dataset/contracts/transaction_order/15397.sol#307-329) uses literals with too many digits:
	- tierList[8] = Tier(2 * 10 ** 17,100000 * 10 ** 18,15,true) (dataset/contracts/transaction_order/15397.sol#328)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
Crowdsale.nextFreeTier (dataset/contracts/transaction_order/15397.sol#69) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
batchAddAddresses(address[],uint256[]) should be declared external:
	- Crowdsale.batchAddAddresses(address[],uint256[]) (dataset/contracts/transaction_order/15397.sol#296-302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/15397.sol analyzed (5 contracts with 100 detectors), 35 result(s) found
