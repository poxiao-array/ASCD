'solc --version' running
'solc ./dataset/contracts/transaction_order/15755.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/15755.sol:
./dataset/contracts/transaction_order/15755.sol:326:37: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0xF39ba36840c25A900F9a0c903cF7861ba1673d63'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
      ThirdPartyPlatformAddr      = 0xf39ba36840c25a900f9a0c903cf7861ba1673d63;
                                    ^----------------------------------------^
./dataset/contracts/transaction_order/15755.sol:327:37: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x4909ECABEdF1ff2E2A640F2ca09428a24246e525'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
      PlatformAutonomyAddr        = 0x4909ecabedf1ff2e2a640f2ca09428a24246e525;
                                    ^----------------------------------------^
./dataset/contracts/transaction_order/15755.sol:328:37: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0xE28CBAC113C5b6C0F0D04d30CB331CC797b36BC8'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
      ResearchGroupAddr           = 0xe28cbac113c5b6c0f0d04d30cb331cc797b36bc8;
                                    ^----------------------------------------^
./dataset/contracts/transaction_order/15755.sol:329:37: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x3834DF1Dff2Ba13E1b17E5379729D8Ee153C4B4a'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
      MarketingAddr               = 0x3834df1dff2ba13e1b17e5379729d8ee153c4b4a;
                                    ^----------------------------------------^

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
	- ^0.4.21 (dataset/contracts/transaction_order/15755.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/15755.sol#41) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/15755.sol#41) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/15755.sol#57) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/15755.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/15755.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/15755.sol#119) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/15755.sol#141) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/15755.sol#141) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/15755.sol#153) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/15755.sol#153) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/15755.sol#167) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/15755.sol#167) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/15755.sol#183) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/15755.sol#183) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/15755.sol#245) is not in mixedCase
Constant LOCToken.million (dataset/contracts/transaction_order/15755.sol#302) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.totalToken (dataset/contracts/transaction_order/15755.sol#303) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nThirdPartyPlatform (dataset/contracts/transaction_order/15755.sol#306) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nPlatformAutonomy (dataset/contracts/transaction_order/15755.sol#307) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nResearchGroup (dataset/contracts/transaction_order/15755.sol#308) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nMarketing (dataset/contracts/transaction_order/15755.sol#309) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nInvEnterprise (dataset/contracts/transaction_order/15755.sol#310) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nAngelInvestment (dataset/contracts/transaction_order/15755.sol#311) is not in UPPER_CASE_WITH_UNDERSCORES
Constant LOCToken.nCultureTravelFoundation (dataset/contracts/transaction_order/15755.sol#312) is not in UPPER_CASE_WITH_UNDERSCORES
Variable LOCToken.ThirdPartyPlatformAddr (dataset/contracts/transaction_order/15755.sol#315) is not in mixedCase
Variable LOCToken.PlatformAutonomyAddr (dataset/contracts/transaction_order/15755.sol#316) is not in mixedCase
Variable LOCToken.ResearchGroupAddr (dataset/contracts/transaction_order/15755.sol#317) is not in mixedCase
Variable LOCToken.MarketingAddr (dataset/contracts/transaction_order/15755.sol#318) is not in mixedCase
Variable LOCToken.InvEnterpriseAddr (dataset/contracts/transaction_order/15755.sol#319) is not in mixedCase
Variable LOCToken.AngelInvestmentAddr (dataset/contracts/transaction_order/15755.sol#320) is not in mixedCase
Variable LOCToken.CultureTravelFoundationAddr (dataset/contracts/transaction_order/15755.sol#321) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
LOCToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/15755.sol#296-344) uses literals with too many digits:
	- million = 1000000e18 (dataset/contracts/transaction_order/15755.sol#302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/15755.sol analyzed (9 contracts with 100 detectors), 34 result(s) found
