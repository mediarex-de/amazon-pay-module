[{assign var="oBillingAddress" value=$oView->getBillingAddressAsObj()}]
[{if $oViewConf->isAmazonSessionActive() && !$oViewConf->isAmazonExclude() && $oBillingAddress}]
    [{include file='amazonpay/filtered_billing_address.tpl' billadr=$oBillingAddress}]
[{else}]
    [{$smarty.block.parent}]
[{/if}]