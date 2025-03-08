'solc --version' running
'solc ./dataset/contracts/transaction_order/21420.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
XdacTokenCrowdsale (dataset/contracts/transaction_order/21420.sol#285-551) contract sets array length with a user-controlled value:
	- addresses.push(_contributor) (dataset/contracts/transaction_order/21420.sol#465)
XdacTokenCrowdsale (dataset/contracts/transaction_order/21420.sol#285-551) contract sets array length with a user-controlled value:
	- addresses.push(msg.sender) (dataset/contracts/transaction_order/21420.sol#431)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
XdacTokenCrowdsale._deliverTokens(address) (dataset/contracts/transaction_order/21420.sol#438-449) ignores return value by token.transfer(_contributor,amountToken) (dataset/contracts/transaction_order/21420.sol#448)
XdacTokenCrowdsale._sendToken(address,uint256) (dataset/contracts/transaction_order/21420.sol#473-477) ignores return value by _token.transfer(_address,_amountTokens) (dataset/contracts/transaction_order/21420.sol#476)
XdacTokenCrowdsale.transferTokenOwnership(address) (dataset/contracts/transaction_order/21420.sol#492-497) ignores return value by _token.transfer(_newOwner,_token.balanceOf(_token.owner())) (dataset/contracts/transaction_order/21420.sol#494)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-transfer
INFO:Detectors:
XdacTokenCrowdsale._deliverTokens(address) (dataset/contracts/transaction_order/21420.sol#438-449) has external calls inside a loop: wallet.transfer(amountEth) (dataset/contracts/transaction_order/21420.sol#447)
XdacTokenCrowdsale._deliverTokens(address) (dataset/contracts/transaction_order/21420.sol#438-449) has external calls inside a loop: token.transfer(_contributor,amountToken) (dataset/contracts/transaction_order/21420.sol#448)
XdacTokenCrowdsale._sendToken(address,uint256) (dataset/contracts/transaction_order/21420.sol#473-477) has external calls inside a loop: require(bool)(_token.balanceOf(_token.owner()) >= _amountTokens) (dataset/contracts/transaction_order/21420.sol#475)
XdacTokenCrowdsale._sendToken(address,uint256) (dataset/contracts/transaction_order/21420.sol#473-477) has external calls inside a loop: _token.transfer(_address,_amountTokens) (dataset/contracts/transaction_order/21420.sol#476)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
XdacTokenCrowdsale._forwardFunds() (dataset/contracts/transaction_order/21420.sol#426-436) compares to a boolean constant:
	-contributor.created == false (dataset/contracts/transaction_order/21420.sol#429)
XdacTokenCrowdsale._whitelistAddress(address) (dataset/contracts/transaction_order/21420.sol#460-471) compares to a boolean constant:
	-contributor.created == false (dataset/contracts/transaction_order/21420.sol#463)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
XdacTokenCrowdsale._deliverTokens(address) (dataset/contracts/transaction_order/21420.sol#438-449) has costly operations inside a loop:
	- weiDelivered = weiDelivered.add(amountEth) (dataset/contracts/transaction_order/21420.sol#446)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
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
	- ^0.4.18 (dataset/contracts/transaction_order/21420.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/21420.sol#132) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/21420.sol#132) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/21420.sol#148) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/21420.sol#187) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/21420.sol#187) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/21420.sol#187) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/21420.sol#209) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/21420.sol#209) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/21420.sol#221) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/21420.sol#221) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/21420.sol#235) is not in mixedCase
Parameter StandardToken.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/21420.sol#235) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/21420.sol#251) is not in mixedCase
Parameter StandardToken.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/21420.sol#251) is not in mixedCase
Parameter XdacTokenCrowdsale.buyTokens(address)._contributor (dataset/contracts/transaction_order/21420.sol#348) is not in mixedCase
Parameter XdacTokenCrowdsale.whitelistAddresses(address[])._contributors (dataset/contracts/transaction_order/21420.sol#481) is not in mixedCase
Parameter XdacTokenCrowdsale.whitelistAddress(address)._contributor (dataset/contracts/transaction_order/21420.sol#488) is not in mixedCase
Parameter XdacTokenCrowdsale.transferTokenOwnership(address)._newOwner (dataset/contracts/transaction_order/21420.sol#492) is not in mixedCase
Parameter XdacTokenCrowdsale.sendToken(address,uint256)._address (dataset/contracts/transaction_order/21420.sol#499) is not in mixedCase
Parameter XdacTokenCrowdsale.sendToken(address,uint256)._amountTokens (dataset/contracts/transaction_order/21420.sol#499) is not in mixedCase
Parameter XdacTokenCrowdsale.sendTokens(address[],uint256[])._addresses (dataset/contracts/transaction_order/21420.sol#504) is not in mixedCase
Parameter XdacTokenCrowdsale.sendTokens(address[],uint256[])._amountTokens (dataset/contracts/transaction_order/21420.sol#504) is not in mixedCase
Parameter XdacTokenCrowdsale.refundTokensForAddress(address)._contributor (dataset/contracts/transaction_order/21420.sol#516) is not in mixedCase
Parameter XdacTokenCrowdsale.getTokenAmount(uint256)._weiAmount (dataset/contracts/transaction_order/21420.sol#536) is not in mixedCase
Parameter XdacTokenCrowdsale.getEthAmount(uint256)._tokenAmount (dataset/contracts/transaction_order/21420.sol#543) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Redundant expression "curRound (dataset/contracts/transaction_order/21420.sol#382)" inXdacTokenCrowdsale (dataset/contracts/transaction_order/21420.sol#285-551)
Redundant expression "curRound (dataset/contracts/transaction_order/21420.sol#410)" inXdacTokenCrowdsale (dataset/contracts/transaction_order/21420.sol#285-551)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#redundant-statements
INFO:Detectors:
XdacToken.decimals (dataset/contracts/transaction_order/21420.sol#269) should be constant 
XdacToken.name (dataset/contracts/transaction_order/21420.sol#267) should be constant 
XdacToken.symbol (dataset/contracts/transaction_order/21420.sol#268) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
whitelistAddresses(address[]) should be declared external:
	- XdacTokenCrowdsale.whitelistAddresses(address[]) (dataset/contracts/transaction_order/21420.sol#481-485)
sendTokens(address[],uint256[]) should be declared external:
	- XdacTokenCrowdsale.sendTokens(address[],uint256[]) (dataset/contracts/transaction_order/21420.sol#504-512)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/21420.sol analyzed (8 contracts with 100 detectors), 46 result(s) found
