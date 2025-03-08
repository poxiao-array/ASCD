'solc --version' running
'solc ./dataset/contracts/transaction_order/31525.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/31525.sol:
./dataset/contracts/transaction_order/31525.sol:284:5: Warning: Function state mutability can be restricted to view
    function burnRemainingToken(uint256 _value) external  onlyOwner isIcoFinished {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/31525.sol:291:5: Warning: Function state mutability can be restricted to view
    function withdrawRemainingToken(uint256 _value,address trakTokenAdmin)  external onlyOwner isIcoFinished {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/31525.sol:306:5: Warning: Function state mutability can be restricted to view
    function changeTokensWallet(address newAddress) external  onlyOwner  {
    ^
Spanning multiple lines.

INFO:Detectors:
TrakToken (dataset/contracts/transaction_order/31525.sol#41-47) has incorrect ERC20 function interface:TrakToken.transfer(address,uint256) (dataset/contracts/transaction_order/31525.sol#43)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
CrowdSale.changeFundsWallet(address) (dataset/contracts/transaction_order/31525.sol#318-322) should emit an event for: 
	- contractOwner = newAddress (dataset/contracts/transaction_order/31525.sol#321) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CrowdSale.updateFundingEndBlock(uint256) (dataset/contracts/transaction_order/31525.sol#276-280) should emit an event for: 
	- fundingEndBlock = newFundingEndBlock (dataset/contracts/transaction_order/31525.sol#279) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
CrowdSale.buyTokens(address) (dataset/contracts/transaction_order/31525.sol#177-226) compares to a boolean constant:
	-require(bool)(whitelistedContributors[beneficiary] == true) (dataset/contracts/transaction_order/31525.sol#180)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/31525.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter CrowdSale.burnRemainingToken(uint256)._value (dataset/contracts/transaction_order/31525.sol#284) is not in mixedCase
Parameter CrowdSale.withdrawRemainingToken(uint256,address)._value (dataset/contracts/transaction_order/31525.sol#291) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CrowdSale.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/31525.sol#49-338) uses literals with too many digits:
	- tokensPerTranche = 11000000 * (uint256(10) ** decimals) (dataset/contracts/transaction_order/31525.sol#83)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
CrowdSale.version (dataset/contracts/transaction_order/31525.sol#54) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/31525.sol analyzed (3 contracts with 100 detectors), 10 result(s) found
