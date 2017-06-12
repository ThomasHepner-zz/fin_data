module ReportsHelper
	def build_sbif_uri(data_type)
		"http://api.sbif.cl/api-sbifv3/recursos_api/#{data_type}/periodo"
	end

	def uf_uri(date_from, date_to)
		date_from = date_from.split('/')
		date_to = date_to.split('/')
		uri = build_sbif_uri('uf')
		uri << "/#{date_from[2]}/#{date_from[0]}/#{date_to[2]}/#{date_to[0]}"
		uri << format_and_key
		uri
	end

	def usd_uri(date_from, date_to)
		date_from = date_from.split('/')
		date_to = date_to.split('/')
		uri = build_sbif_uri('dolar')
		uri << "/#{date_from[2]}/#{date_from[0]}/#{date_from[1]}/#{date_to[2]}/#{date_to[0]}/#{date_to[1]}"
		uri << format_and_key
		uri
	end

	def format_and_key
		"?apikey=4f5dd540572b10aecc876201bfd56746a5879a97&formato=json"
	end
end
