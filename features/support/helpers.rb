module Helpers
  
  def creat_folder(name)
    if Dir.exist?(name) != true
      Dir.mkdir(name)
    end
  end

  def take_screenshot(nome)
    time = Time.new
    @pathbase = 'reports'
    img = "#{@pathbase}/#{nome}.png"
    page.save_screenshot(img)
    attach(img, 'image/png')
  end

  def zip_screenshot
    time = Time.now
    @pathbase = "reports"
    @archive = File.join(@pathbase, File.basename(@pathbase)) + '_' + time.strftime("%d%m%Y_%H%M%S") + '.zip'
    FileUtils.rm @archive, :force=>true
    Zip::ZipFile.open(@archive, 'w') do |zipfile|
      Dir["#{@pathbase}/**/**"].reject{|f|f==@archive}.each do |file|
        zipfile.add(file.sub(@pathbase+'/',''),file)
      end
    end
  end

  def delete_filesLog
    FileUtils.rm_rf(Dir.glob("reports/*"))
  end

end