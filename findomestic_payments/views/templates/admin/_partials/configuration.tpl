{*
* 2007-2021 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2021 PrestaShop SA

*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<form id="configuration_form" class="defaultForm form-horizontal findomestic_payments" action="#findomestic_step_1" method="post" enctype="multipart/form-data" novalidate="">
	<input type="hidden" name="submit_login" value="1">
	<div class="panel" id="fieldset_0">
		<div class="form-wrapper">
			<div class="form-group findomestic-connection">

				<div class="connect_btn">

						<h2>{l s='Inserisci le informazioni di connessione a Findomestic' mod='findomestic_payments'}</h2>

				</div>
			</div>
			<hr/>

      <div class="form-group">
        <div class="form-group">
          <label class="control-label col-lg-3 required">{l s='Attivo' mod='findomestic_payments'}</label>
          <div class="col-lg-9">
            <select type="text" name="FINDOMESTIC_ACTIVE" id="fp_cart_button" >
              <option value="1" {if $findomestic_active == 1}selected="selected"{/if}>SI </option>
              <option value="0" {if $findomestic_active == 0}selected="selected"{/if}>NO </option>
            </select>
          </div>
        </div>
      </div>
			<div class="form-group">
				<label class="control-label col-lg-3">{l s='Modalità' mod='findomestic_payments'}</label>

				<div class="col-lg-9">
					<span class="switch prestashop-switch fixed-width-lg">
						<input type="radio" name="FINDOMESTIC_MODE" id="FINDOMESTIC_MODE_ON" value="1" {if $findomestic_mode == 1}checked="checked"{/if}>
						<label for="findomestic_MODE_ON">{l s='Sandbox' mod='findomestic_payments'}</label>
						<input type="radio" name="FINDOMESTIC_MODE" id="findomestic_MODE_OFF" value="0" {if $findomestic_mode == 0}checked="checked"{/if}>
						<label for="findomestic_MODE_OFF">{l s='Live' mod='findomestic_payments'}</label>
						<a class="slide-button btn"></a>
					</span>
					<p class="help-block"></p>
				</div>
			</div>

			<div class="form-group" {if $findomestic_mode == 1}style="display: none;"{/if}>
				<label class="control-label col-lg-3 required">{l s='Codice venditore (live mode)' mod='findomestic_payments'}</label>
				<div class="col-lg-9">
					<input type="text" name="FINDOMESTIC_TVEI" id="tvei" value="{$findomestic_tvei|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
				</div>
			</div>
            <div class="form-group" {if $findomestic_mode == 1}style="display: none;"{/if}>
                <label class="control-label col-lg-3 required">{l s='PRF (live mode)' mod='findomestic_payments'}</label>
                <div class="col-lg-9">
                    <input type="text" name="FINDOMESTIC_PRF" id="prf" value="{$findomestic_prf|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
                </div>
            </div>
            <div class="form-group" {if $findomestic_mode == 1}style="display: none;"{/if}>
                <label class="control-label col-lg-3">{l s='Codice finalità (live mode)' mod='findomestic_payments'}</label>
                <div class="col-lg-9">
                    <input type="text" name="FINDOMESTIC_COD_FIN" id="cod_fin" value="{$findomestic_cod_fin|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
                </div>
            </div>
      <div class="form-group" {if $findomestic_mode == 1}style="display: none;"{/if}>
        <label class="control-label col-lg-3 required">{l s='Url Web app (live mode)' mod='findomestic_payments'}</label>
        <div class="col-lg-9">
          <input type="text" name="FINDOMESTIC_URL" id="url" value="{$findomestic_url|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
        </div>
      </div>





			<div class="form-group"{if $findomestic_mode == 0}style="display: none;"{/if}>
				<label class="control-label col-lg-3 required">{l s='Codice venditore (test mode)' mod='findomestic_payments'}</label>
				<div class="col-lg-9">
					<input type="text" name="FINDOMESTIC_TEST_TVEI" id="test_tvei" value="{$findomestic_test_tvei|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
				</div>
			</div>
			<div class="form-group"{if $findomestic_mode == 0}style="display: none;"{/if}>
				<label class="control-label col-lg-3 required">{l s='PRF (test mode)' mod='findomestic_payments'}</label>
                <div class="col-lg-9">
                  <input type="text" name="FINDOMESTIC_TEST_PRF" id="test_prf" value="{$findomestic_test_prf|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
                </div>
			</div>

            <div class="form-group" {if $findomestic_mode == 0}style="display: none;"{/if}>
                <label class="control-label col-lg-3">{l s='Codice finalità (test mode)' mod='findomestic_payments'}</label>
                <div class="col-lg-9">
                    <input type="text" name="FINDOMESTIC_TEST_COD_FIN" id="test_cod_fin" value="{$findomestic_test_cod_fin|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
                </div>
            </div>

          <div class="form-group"{if $findomestic_mode == 0}style="display: none;"{/if}>
            <label class="control-label col-lg-3 required">{l s='Url web app (test mode)' mod='findomestic_payments'}</label>
            <div class="col-lg-9">
              <input type="text" name="FINDOMESTIC_TEST_URL" id="test_url" value="{$findomestic_test_url|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
            </div>
          </div>


      <div class="form-group">
        <label class="control-label col-lg-3 required">{l s='Spesa minima' mod='findomestic_payments'}</label>
        <div class="col-lg-9">
          <input type="text" name="FINDOMESTIC_MIN" id="test_url" value="{$findomestic_min|escape:'htmlall':'UTF-8'}" class="fixed-width-xxl" size="20" required="required">
        </div>
      </div>

      <div class="form-group">
        <label class="control-label col-lg-3 required">{l s='Simulazione scheda prodotto' mod='findomestic_payments'}</label>
        <div class="col-lg-9">
          <select type="text" name="FINDOMESTIC_PRODUCT_BUTTON" id="fp_product_button" >
            <option value="0" {if $findomestic_product_button == 0}selected="selected"{/if}>Inattivo </option>
            <option value="1" {if $findomestic_product_button == 1}selected="selected"{/if}>Solo testo Riga singola </option>
            <option value="2" {if $findomestic_product_button == 2}selected="selected"{/if}>Solo testo Riga multipla </option>
          </select>
        </div>
      </div>


        <div class="form-group">
            <label class="control-label col-lg-3 required">{l s='Simulazione carrello' mod='findomestic_payments'}</label>
            <div class="col-lg-9">
                <select type="text" name="FINDOMESTIC_CART_BUTTON" id="fp_cart_button" >
                    <option value="0" {if $findomestic_cart_button == 0}selected="selected"{/if}>Inattivo </option>
                    <option value="1" {if $findomestic_cart_button == 1}selected="selected"{/if}>Solo testo Riga singola </option>
                    <option value="2" {if $findomestic_cart_button == 2}selected="selected"{/if}>Solo testo Riga multipla </option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-lg-3 required">{l s='Colore logo' mod='findomestic_payments'}</label>
            <div class="col-lg-9">
                <select type="text" name="FINDOMESTIC_LOGO_COLOR" id="fp_logo_color" >
                    <option value="green" {if $findomestic_logo_color == "green"}selected="selected"{/if}>Logo verde </option>
                    <option value="negative" {if $findomestic_logo_color == "negative"}selected="selected"{/if}>Logo bianco </option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-lg-3 required">{l s='Colore icona (pagina checkout)' mod='findomestic_payments'}</label>
            <div class="col-lg-9">
                <select type="text" name="FINDOMESTIC_ICON_COLOR" id="fp_icon_color" >
                    <option value="green" {if $findomestic_icon_color == "green"}selected="selected"{/if}>Icona verde </option>
                    <option value="negative" {if $findomestic_icon_color == "negative"}selected="selected"{/if}>Icona bianca </option>
                </select>
            </div>
        </div>
            <div class="form-group">

                <label class="control-label col-lg-3">{l s='Testo legal per footer' mod='findomestic_payments'}</label>
                <div class="col-lg-9">
                    <textarea name="FINDOMESTIC_LEGAL_TEXT" id="fp_text_legal" class= "autoload_rte" rows="10" cols="45" >{$findomestic_legal_text}</textarea>
                </div>
            </div>

      <hr>
      <br>
      <br>
			<div id="conf-payment-methods" class="col-lg-12">
        <h3>Info:</h3>
				<p><b>{l s='Sandbox Findomestic' mod='findomestic_payments'}</b></p>
				<ul>
					<li>{l s='Clicca sopra per attivare o disattivare la modalità di test.' mod='findomestic_payments'}</li>

					<li>{l s='Ricordati di impostare il modulo in modalità LIVE prima di andare in produzione.' mod='findomestic_payments'}</li>
				</ul>

				<p><b>{l s='Ottenere supporto' mod='findomestic_payments'}</b></p>
				<ul>
					<li>{l s='I parametri necessari alla configurazione del modulo/plug-in vengono forniti da Findomestic. Se hai bisogno di supporto contatta il tuo referente commerciale.
' mod='findomestic_payments'}</li>
					<li>Non sei ancora convenzionato con noi? <a href="https://findo.it/ecommerce">Visita Findomestic</a> {l mod='findomestic_payments'}</li>

				</ul>




			</div>
		</div>
		<div class="panel-footer">
			<button type="submit" value="1" id="configuration_form_submit_btn" name="submit_login" class="btn btn-default pull-right button">
				<i class="process-icon-save"></i>
				{l s='Salva' mod='findomestic_payments'}
			</button>
		</div>
	</div>
</form>
