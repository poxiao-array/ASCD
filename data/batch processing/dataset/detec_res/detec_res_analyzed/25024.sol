'solc --version' running
'solc ./dataset/contracts/transaction_order/25024.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/25024.sol:
./dataset/contracts/transaction_order/25024.sol:178:44: Warning: "sha3" has been deprecated in favour of "keccak256"
      require(_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
                                           ^----------------------------------------------------^

INFO:Detectors:
YouCollectBase._payout(address,uint256) (dataset/contracts/transaction_order/25024.sol#196-202) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(amount) (dataset/contracts/transaction_order/25024.sol#198)
	- _to.transfer(amount) (dataset/contracts/transaction_order/25024.sol#200)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
ERC721YC (dataset/contracts/transaction_order/25024.sol#205-457) contract sets array length with a user-controlled value:
	- tokens.push(tokenId) (dataset/contracts/transaction_order/25024.sol#341)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
CollectibleToken._payoutMining(uint256,address,address) (dataset/contracts/transaction_order/25024.sol#636-643) performs a multiplication on the result of a division:
	- coinsMinedHalf = block.number.sub(miningLastPayoutBlock[tokenId]).mul(earningsEachBlock).mul(miningPower[tokenId]).div(2) (dataset/contracts/transaction_order/25024.sol#637)
	- totalSupply = totalSupply.add(coinsMinedHalf.mul(2)) (dataset/contracts/transaction_order/25024.sol#641)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
CollectibleToken (dataset/contracts/transaction_order/25024.sol#459-727) has incorrect ERC721 function interface:YouCollectBase.transferFrom(address,address,uint256) (dataset/contracts/transaction_order/25024.sol#152-162)
CollectibleToken (dataset/contracts/transaction_order/25024.sol#459-727) has incorrect ERC721 function interface:YouCollectBase.approve(address,uint256) (dataset/contracts/transaction_order/25024.sol#168-172)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc721-interface
INFO:Detectors:
ERC721YC.tokensOfOwner(address) (dataset/contracts/transaction_order/25024.sol#428-449) uses a dangerous strict equality:
	- tokenCount == 0 (dataset/contracts/transaction_order/25024.sol#430)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
YouCollectBase.transferFrom(address,address,uint256).allowance (dataset/contracts/transaction_order/25024.sol#153) shadows:
	- YouCollectBase.allowance(address,address) (dataset/contracts/transaction_order/25024.sol#182-184) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
INFO:Detectors:
CollectibleToken.changeEarnings(uint256) (dataset/contracts/transaction_order/25024.sol#575-578) should emit an event for: 
	- earningsEachBlock = amount (dataset/contracts/transaction_order/25024.sol#576) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
ERC721YC._transferToken(address,address,uint256) (dataset/contracts/transaction_order/25024.sol#408-420) has costly operations inside a loop:
	- delete tokenIndexToApproved[_tokenId] (dataset/contracts/transaction_order/25024.sol#415)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Deprecated standard detected require(bool)(_spender.call(bytes4(bytes32(sha3()(receiveApproval(address,uint256,address,bytes)))),msg.sender,_value,this,_extraData)) (dataset/contracts/transaction_order/25024.sol#178):
	- Usage of "sha3()" should be replaced with "keccak256()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.18 (dataset/contracts/transaction_order/25024.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in YouCollectBase.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/25024.sol#174-180):
	- require(bool)(_spender.call(bytes4(bytes32(sha3()(receiveApproval(address,uint256,address,bytes)))),msg.sender,_value,this,_extraData)) (dataset/contracts/transaction_order/25024.sol#178)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter Owned.setCEO(address)._newCEO (dataset/contracts/transaction_order/25024.sol#82) is not in mixedCase
Parameter Owned.setCOO(address)._newCOO (dataset/contracts/transaction_order/25024.sol#89) is not in mixedCase
Parameter YouCollectBase.transfer(address,uint256)._to (dataset/contracts/transaction_order/25024.sol#144) is not in mixedCase
Parameter YouCollectBase.transfer(address,uint256)._value (dataset/contracts/transaction_order/25024.sol#144) is not in mixedCase
Parameter YouCollectBase.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/25024.sol#152) is not in mixedCase
Parameter YouCollectBase.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/25024.sol#152) is not in mixedCase
Parameter YouCollectBase.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/25024.sol#152) is not in mixedCase
Parameter YouCollectBase.balanceOf(address)._owner (dataset/contracts/transaction_order/25024.sol#164) is not in mixedCase
Parameter YouCollectBase.approve(address,uint256)._spender (dataset/contracts/transaction_order/25024.sol#168) is not in mixedCase
Parameter YouCollectBase.approve(address,uint256)._value (dataset/contracts/transaction_order/25024.sol#168) is not in mixedCase
Parameter YouCollectBase.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/25024.sol#174) is not in mixedCase
Parameter YouCollectBase.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/25024.sol#174) is not in mixedCase
Parameter YouCollectBase.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/25024.sol#174) is not in mixedCase
Parameter YouCollectBase.allowance(address,address)._owner (dataset/contracts/transaction_order/25024.sol#182) is not in mixedCase
Parameter YouCollectBase.allowance(address,address)._spender (dataset/contracts/transaction_order/25024.sol#182) is not in mixedCase
Parameter YouCollectBase.payout(address)._to (dataset/contracts/transaction_order/25024.sol#188) is not in mixedCase
Parameter YouCollectBase.payout(address,uint256)._to (dataset/contracts/transaction_order/25024.sol#191) is not in mixedCase
Parameter ERC721YC.approveToken(address,uint256)._to (dataset/contracts/transaction_order/25024.sol#239) is not in mixedCase
Parameter ERC721YC.approveToken(address,uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#240) is not in mixedCase
Parameter ERC721YC.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#263) is not in mixedCase
Parameter ERC721YC.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#272) is not in mixedCase
Parameter ERC721YC.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#282) is not in mixedCase
Parameter ERC721YC.transferToken(address,uint256)._to (dataset/contracts/transaction_order/25024.sol#300) is not in mixedCase
Parameter ERC721YC.transferToken(address,uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#301) is not in mixedCase
Parameter ERC721YC.transferTokenFrom(address,address,uint256)._from (dataset/contracts/transaction_order/25024.sol#315) is not in mixedCase
Parameter ERC721YC.transferTokenFrom(address,address,uint256)._to (dataset/contracts/transaction_order/25024.sol#316) is not in mixedCase
Parameter ERC721YC.transferTokenFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#317) is not in mixedCase
Function ERC721YC._ownsToken(address,uint256) (dataset/contracts/transaction_order/25024.sol#346-348) is not in mixedCase
Parameter ERC721YC._ownsToken(address,uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#346) is not in mixedCase
Parameter ERC721YC.changeTokenPrice(uint256,uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#353) is not in mixedCase
Parameter ERC721YC.createPromoCollectible(uint256,address,uint256)._owner (dataset/contracts/transaction_order/25024.sol#370) is not in mixedCase
Parameter ERC721YC.createPromoCollectible(uint256,address,uint256)._price (dataset/contracts/transaction_order/25024.sol#370) is not in mixedCase
Parameter ERC721YC.tokenBalanceOf(address)._owner (dataset/contracts/transaction_order/25024.sol#393) is not in mixedCase
Parameter ERC721YC.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/25024.sol#428) is not in mixedCase
Parameter CollectibleToken.getInitialPriceOfToken(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#474) is not in mixedCase
Parameter CollectibleToken.getCollectible(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#493) is not in mixedCase
Parameter CollectibleToken.purchase(uint256)._tokenId (dataset/contracts/transaction_order/25024.sol#509) is not in mixedCase
Parameter CollectibleToken.createPromoCollectibleWithMining(uint256,address,uint256,uint256,uint256,uint256)._owner (dataset/contracts/transaction_order/25024.sol#679) is not in mixedCase
Parameter CollectibleToken.createPromoCollectibleWithMining(uint256,address,uint256,uint256,uint256,uint256)._price (dataset/contracts/transaction_order/25024.sol#679) is not in mixedCase
Parameter CollectibleToken.createPromoCollectiblesWithMining(uint256[],address[],uint256[],uint256[],uint256[],uint256[])._owner (dataset/contracts/transaction_order/25024.sol#700) is not in mixedCase
Parameter CollectibleToken.createPromoCollectiblesWithMining(uint256[],address[],uint256[],uint256[],uint256[],uint256[])._price (dataset/contracts/transaction_order/25024.sol#700) is not in mixedCase
Variable CollectibleToken.FIRST_MINING_LEVEL_COST (dataset/contracts/transaction_order/25024.sol#573) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CollectibleToken.CollectibleToken() (dataset/contracts/transaction_order/25024.sol#468-472) uses literals with too many digits:
	- balances[msg.sender] = 10000000000000000000 (dataset/contracts/transaction_order/25024.sol#469)
CollectibleToken.CollectibleToken() (dataset/contracts/transaction_order/25024.sol#468-472) uses literals with too many digits:
	- totalSupply = 10000000000000000000 (dataset/contracts/transaction_order/25024.sol#470)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
CollectibleToken.FIRST_MINING_LEVEL_COST (dataset/contracts/transaction_order/25024.sol#573) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
approveAndCall(address,uint256,bytes) should be declared external:
	- YouCollectBase.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/25024.sol#174-180)
createPromoCollectiblesWithMining(uint256[],address[],uint256[],uint256[],uint256[],uint256[]) should be declared external:
	- CollectibleToken.createPromoCollectiblesWithMining(uint256[],address[],uint256[],uint256[],uint256[],uint256[]) (dataset/contracts/transaction_order/25024.sol#700-722)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/25024.sol analyzed (5 contracts with 100 detectors), 60 result(s) found
