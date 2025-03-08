'solc --version' running
'solc ./dataset/contracts/transaction_order/35085.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#24-29) performs a multiplication on the result of a division:
	- c = a / b (dataset/contracts/transaction_order/35085.sol#26)
	- validate(a == b * c + a % b) (dataset/contracts/transaction_order/35085.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:StandardToken.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/35085.sol#132-142)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:StandardToken.approve(address,uint256) (dataset/contracts/transaction_order/35085.sol#144-147)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:ERC20.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/35085.sol#116)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:ERC20.approve(address,uint256) (dataset/contracts/transaction_order/35085.sol#117)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:ERC20Basic.transfer(address,uint256) (dataset/contracts/transaction_order/35085.sol#74)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:BasicToken.transfer(address,uint256) (dataset/contracts/transaction_order/35085.sol#98-102)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:SIMPLECOIN.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/35085.sol#520-522)
SIMPLECOIN (dataset/contracts/transaction_order/35085.sol#185-528) has incorrect ERC20 function interface:SIMPLECOIN.transfer(address,uint256) (dataset/contracts/transaction_order/35085.sol#523-525)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Ownable.transferOwnership(address) (dataset/contracts/transaction_order/35085.sol#176-180) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/35085.sol#178) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
SafeMath.add(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#36-40) is never used and should be removed
SafeMath.div(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#24-29) is never used and should be removed
SafeMath.max256(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#50-52) is never used and should be removed
SafeMath.max64(uint64,uint64) (dataset/contracts/transaction_order/35085.sol#42-44) is never used and should be removed
SafeMath.min256(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#54-56) is never used and should be removed
SafeMath.min64(uint64,uint64) (dataset/contracts/transaction_order/35085.sol#46-48) is never used and should be removed
SafeMath.mul(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#18-22) is never used and should be removed
SafeMath.sub(uint256,uint256) (dataset/contracts/transaction_order/35085.sol#31-34) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/35085.sol#11)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/35085.sol#98) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/35085.sol#98) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/35085.sol#104) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35085.sol#132) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35085.sol#132) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35085.sol#132) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/35085.sol#144) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/35085.sol#144) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/35085.sol#149) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/35085.sol#149) is not in mixedCase
Parameter SIMPLECOIN.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35085.sol#520) is not in mixedCase
Parameter SIMPLECOIN.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35085.sol#520) is not in mixedCase
Parameter SIMPLECOIN.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35085.sol#520) is not in mixedCase
Parameter SIMPLECOIN.transfer(address,uint256)._to (dataset/contracts/transaction_order/35085.sol#523) is not in mixedCase
Parameter SIMPLECOIN.transfer(address,uint256)._value (dataset/contracts/transaction_order/35085.sol#523) is not in mixedCase
Variable SIMPLECOIN.TEAM_WALLET (dataset/contracts/transaction_order/35085.sol#205) is not in mixedCase
Variable SIMPLECOIN.ICO_ADDRESS (dataset/contracts/transaction_order/35085.sol#206) is not in mixedCase
Variable SIMPLECOIN.current_supply (dataset/contracts/transaction_order/35085.sol#209) is not in mixedCase
Variable SIMPLECOIN.ico_starting_supply (dataset/contracts/transaction_order/35085.sol#210) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
SIMPLECOIN.distributeMarketingShares() (dataset/contracts/transaction_order/35085.sol#429-450) uses literals with too many digits:
	- balances[0xAc5C2414dae4ADB07D82d40dE71B4Bc5E2b417fd] = 100000000 * WEI (dataset/contracts/transaction_order/35085.sol#438)
SIMPLECOIN.distributeMarketingShares() (dataset/contracts/transaction_order/35085.sol#429-450) uses literals with too many digits:
	- balances[0x603D3e11E88dD9aDdc4D9AbE205C7C02e9e13483] = 20000000 * WEI (dataset/contracts/transaction_order/35085.sol#439)
SIMPLECOIN.distributeMarketingShares() (dataset/contracts/transaction_order/35085.sol#429-450) uses literals with too many digits:
	- current_supply = (100000000 + 20000000) * WEI (dataset/contracts/transaction_order/35085.sol#441)
SIMPLECOIN.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/35085.sol#185-528) uses literals with too many digits:
	- WEI = 1000000000000000000 (dataset/contracts/transaction_order/35085.sol#194)
SIMPLECOIN.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/35085.sol#185-528) uses literals with too many digits:
	- INITIAL_SUPPLY = 500000000 * WEI (dataset/contracts/transaction_order/35085.sol#195)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
ERC20Basic.totalSupply (dataset/contracts/transaction_order/35085.sol#72) should be constant 
SIMPLECOIN.ICO_ADDRESS (dataset/contracts/transaction_order/35085.sol#206) should be constant 
SIMPLECOIN.TEAM_WALLET (dataset/contracts/transaction_order/35085.sol#205) should be constant 
SIMPLECOIN.decimals (dataset/contracts/transaction_order/35085.sol#191) should be constant 
SIMPLECOIN.name (dataset/contracts/transaction_order/35085.sol#189) should be constant 
SIMPLECOIN.symbol (dataset/contracts/transaction_order/35085.sol#190) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/35085.sol analyzed (7 contracts with 100 detectors), 50 result(s) found
