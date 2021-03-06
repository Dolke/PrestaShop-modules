{*
** @author PrestaShop SA <contact@prestashop.com>
** @copyright  2007-2013 PrestaShop SA
** @version  Release: $Revision: 1.1 $
**
** International Registered Trademark & Property of PrestaShop SA
**
** Description: PayPal "Payments Advanced" error/warning page
**
** This template is displayed to the customer upon any error received from PayPal Payments Advanced
**
** Step 1: On the payment page/step, your store is displaying an <iframe> from PayPal using your hosted checkout payment page
** Step 2: The customer is filling is credit card details or PayPal credentials inside this <iframe>
** Step 3: PayPal is processing the payment and sending the result to your store
** Step 4: If you store is receiving an error from PayPal, this one is displayed to the customer
** We are also inviting the customer to contact your Customer service via the contact page
**
*}
<h1>{l s='Unexpected payment error' mod='paypalusa'}</h1>
<div class="error">
	<p><b>{l s='Unfortunately your order could not be processed at this time, please contact our Customer service.' mod='paypalusa'}</b></p>
{if isset($paypal_usa_error_messages) && count($paypal_usa_error_messages)}
	<ul style="margin-left: 30px;">
		{foreach from=$paypal_usa_error_messages item=paypal_usa_error_message}
		<li>{$paypal_usa_error_message|escape:'htmlall':'UTF-8'}</li>
		{/foreach}
	</ul>
{/if}
</div>