class SessionsController < ApplicationController
require 'google/apis/drive_v2'
	require 'google/apis/sheets_v4'
  def new
    redirect_to '/auth/google_oauth2'
  end

	def callback
	

    redirect_to componente_matrizs_path(:code => params[:code])
	end


  def create

    auth = request.env["omniauth.auth"]
#		raise auth["credentials"]["token"].inspect
		drive = Google::Apis::DriveV2::DriveService.new # Alias the module
		drive.authorization = auth["credentials"]["token"]
		s = Google::Apis::SheetsV4::SheetsService.new # Alias the module
		drive.authorization = auth["credentials"]["token"]
		s.authorization = auth["credentials"]["token"]
		$ses = auth["credentials"]["token"]
		### BLOCO VISUALIZAR ###
#		raise session[:token].inspect
=begin
		range = 'B2:C2' # NOTAÇÃO LINHA E COLUNA
		response = s.get_spreadsheet_values("1ymfLAF-nsyhgXwQ-HzjclW6zsrHTwvKomn6g68uVMew", range) #VISUALIZA DADOS PLANILHA

		### FIM BLOCO VISUALIZAR ###

		### BLOCO DE ATUALIZAR ###

		value_range = Google::Apis::SheetsV4::ValueRange.new
		value_range.range = 'VÃO!B2:D2'
		value_range.major_dimension = 'ROWS'
		value_range.values = [['VAMOS','FAZER','DE NOVO UM TESTE']]

		s.update_spreadsheet_value(
			'1ymfLAF-nsyhgXwQ-HzjclW6zsrHTwvKomn6g68uVMew',
			value_range.range,
			value_range,
			value_input_option: 'USER_ENTERED',
		)
		
		### FIM ATUALIZAR ###
=end

#		s.update_spreadsheet_value("1ymfLAF-nsyhgXwQ-HzjclW6zsrHTwvKomn6g68uVMew", range, exemplo) 

		#### ACESSA UMA PLANILHA ###
		
	#	teste = s.get_spreadsheet("1YSoIh47G9TmauUnuIo3itn17Vcx4s8Lhqb7tzDv6wZk") 
	#	s.create_spreadsheet(teste)
	#	raise teste.spreadsheet.inspect
		### FIM CICLO ACESSAR ###
		### ATUALIZAR PLANILHA COM OUTRAS SUBPLANILHAS ####
				# value_range.range = 'vazio!B2:D2' - basta passar o nome da sub planilha antes do ponto de ecxclamacao
		### FIM ATUALIZAR VÁRIAS PLANILHAS




	#	raise teste.sheets.inspect
		### FIM BLOCO ACESSR ###
	#	sessions = GoogleDrive::Session.login_with_oauth(auth["credentials"]["token"])
	#	raise sessions.spreadsheets.inspect

    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
		#raise auth.credentials.refresh_token.inspect

		client = Signet::OAuth2::Client.new({
				client_id: Rails.application.secrets.omniauth_provider_key,
				client_secret: Rails.application.secrets.omniauth_provider_secret,
				authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
				scope: Google::Apis::GmailV1::AUTH_GMAIL_READONLY,
			  token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
				redirect_uri: url_for(:action => :callback)
			})
	#	raise auth.inspect
		session[:email] = auth.extra.raw_info.email
		session[:refresh] = auth.credentials.refresh_token
    session[:user_id] = user.id
		session["foto"] = auth.extra.raw_info.picture
		session["nome"] = auth.extra.raw_info.name
		$profile = auth.extra
		redirect_to client.authorization_uri.to_s
	#	raise auth.info.inspect

	#	g = Gmail.connect(:xoauth2, auth.extra.raw_info.email, auth.credentials.token)
	#	raise g.inbox.inspect
#		raise params.inspect
	#	service = Google::Apis::GmailV1::GmailService.new

	#	service.authorization = client

	#	@la = service.list_user_labels('me')
	#	raise @la.inspect
			
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
