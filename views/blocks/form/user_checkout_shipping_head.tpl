[{if $oViewConf->isAmazonActive() && $oViewConf->isAmazonSessionActive() && !$oViewConf->isAmazonExclude()}]
    [{if $oViewConf->isFlowCompatibleTheme()}]
        [{include file="amazonpay/user_checkout_shipping_head_flow.tpl"}]
    [{else}]
        [{include file="amazonpay/user_checkout_shipping_head_wave.tpl"}]
    [{/if}]
[{else}]
    [{$smarty.block.parent}]
[{/if}]