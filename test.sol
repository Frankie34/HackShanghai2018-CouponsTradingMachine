pragma solidity ^0.4.17;

/**
 * The contractName contract does this and that...
 0.保存购买门店的地址

 1.购买coupon【通过共识保障不发生双花】
 2.返回购买者所在门店信息【用于分析流量及消费习惯】
 */
contract ChipSpend {

	address[16] public consumers;

	function consume (uint couponId) public returns (uint) {
		require (couponId >= 0 && couponId <= 10);
		
		consumers[couponId] = msg.sender;
		return couponId;
	}	

	function getConsumers () public view returns(address[16]) {
		return consumers;
	}
	
}
