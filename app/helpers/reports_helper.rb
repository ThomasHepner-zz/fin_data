module ReportsHelper
	def build_sbif_uri(data_type)
		"http://api.sbif.cl/api-sbifv3/recursos_api/#{data_type}/periodo"
	end

	def uf_uri(date_from, date_to)
		date_from = Date.strptime(date_from, "%m/%d/%Y")
		date_to = Date.strptime(date_to, "%m/%d/%Y")
		uri = build_sbif_uri('uf')
		uri << "/#{date_from.year}/#{date_from.month}/#{date_to.year}/#{date_to.month}"
		uri << format_and_key
		uri
	end

	def format_and_key
		"?apikey=4f5dd540572b10aecc876201bfd56746a5879a97&formato=json"
	end
end
