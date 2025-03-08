'solc --version' running
'solc ./dataset/contracts/transaction_order/13542.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/13542.sol:
./dataset/contracts/transaction_order/13542.sol:331:60: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x211064A12cEEEcB88Fe2e757234E8c88795ed5cd'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
    address  public constant ThirdPartyPlatformAddr      = 0x211064a12ceeecb88fe2e757234e8c88795ed5cd;
                                                           ^----------------------------------------^
./dataset/contracts/transaction_order/13542.sol:333:60: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0xE4b74b0B84d4b5E7a15401C0B5c8ACdd9ecB9dF6'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
    address  public constant ResearchGroupAddr           = 0xe4b74b0b84d4b5e7a15401c0b5c8acdd9ecb9df6;
                                                           ^----------------------------------------^
./dataset/contracts/transaction_order/13542.sol:335:60: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x11D774dc8bba7ee455c02eD455f96af693a8D7A8'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
    address  public constant InvEnterpriseAddr           = 0x11d774dc8bba7ee455c02ed455f96af693a8d7a8;
                                                           ^----------------------------------------^
./dataset/contracts/transaction_order/13542.sol:337:60: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'. Correct checksummed address: '0x17e552663CD183408ec5132B0Ba8F75B87e11f5E'. For more information please see https://solidity.readthedocs.io/en/develop/types.html#address-literals
    address  public constant CultureTravelFoundationAddr = 0x17e552663cd183408ec5132b0ba8f75b87e11f5e;
                                                           ^----------------------------------------^

INFO:Detectors:
CheckTokenAssign.checkInitAssignState() (dataset/contracts/transaction_order/13542.sol#300-303) compares to a boolean constant:
	-require(bool)(IsInitAssign == false) (dataset/contracts/transaction_order/13542.sol#301)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
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
	- ^0.4.21 (dataset/contracts/transaction_order/13542.sol#1)
solc-0.4.21 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/13542.sol#41) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/13542.sol#41) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/13542.sol#57) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/13542.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/13542.sol#119) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/13542.sol#119) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/13542.sol#141) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/13542.sol#141) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/13542.sol#153) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/13542.sol#153) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/13542.sol#167) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/13542.sol#167) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/13542.sol#183) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/13542.sol#183) is not in mixedCase
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/13542.sol#245) is not in mixedCase
Function CheckTokenAssign.InitAssignOK() (dataset/contracts/transaction_order/13542.sol#305-308) is not in mixedCase
Variable CheckTokenAssign.IsInitAssign (dataset/contracts/transaction_order/13542.sol#298) is not in mixedCase
Function CTCToken.InitAssignCTC() (dataset/contracts/transaction_order/13542.sol#346-356) is not in mixedCase
Constant CTCToken.million (dataset/contracts/transaction_order/13542.sol#318) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.totalToken (dataset/contracts/transaction_order/13542.sol#319) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nThirdPartyPlatform (dataset/contracts/transaction_order/13542.sol#322) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nPlatformAutonomy (dataset/contracts/transaction_order/13542.sol#323) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nResearchGroup (dataset/contracts/transaction_order/13542.sol#324) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nMarketing (dataset/contracts/transaction_order/13542.sol#325) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nInvEnterprise (dataset/contracts/transaction_order/13542.sol#326) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nAngelInvestment (dataset/contracts/transaction_order/13542.sol#327) is not in UPPER_CASE_WITH_UNDERSCORES
Constant CTCToken.nCultureTravelFoundation (dataset/contracts/transaction_order/13542.sol#328) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CTCToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/13542.sol#312-358) uses literals with too many digits:
	- million = 1000000e18 (dataset/contracts/transaction_order/13542.sol#318)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/13542.sol analyzed (10 contracts with 100 detectors), 31 result(s) found
