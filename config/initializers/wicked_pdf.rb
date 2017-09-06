 # if Rails.env.staging? || Rails.env.production?
# 	WickedPdf.config = {
# 		:wkhtmltopdf => Rails.root.join('bin', 'wkhtmltopdf-linux-amd64').to_s,
#   	#:layout => "pdf.html",
#   	:exe_path => Rails.root.join('bin', 'wkhtmltopdf-linux-amd64').to_s
# 	}
    WickedPdf.config = {
  	#:wkhtmltopdf => '/home/xicom/.rbenv/shims/wkhtmltopdf'
  	#:layout => "pdf.html",
  	 :exe_path => '/usr/local/bin/wkhtmltopdf'
	}
 # else
	# WickedPdf.config = {
 #  	#:wkhtmltopdf => '/home/xicom/.rbenv/shims/wkhtmltopdf'
 #  	#:layout => "pdf.html",
 #  	 :exe_path => '/usr/local/bin/wkhtmltopdf'
	# }
	 #WickedPdf.config = { :exe_path => '/usr/bin/wkhtmltopdf'}
 # end
