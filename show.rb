require 'rexml/document'



class ShowInputMenu

  def show
    arr = []
    doc = REXML::Document.new(open("frame.xml"))
    doc.elements.each('root/first') do |element|
      arr << element.attributes["balance"] + "/n"
      element.elements.each do |e2|
        arr << e2.attributes["item"] + "/n"
        e2.elements.each do |e3|
          arr << e3.text + "/n"
        end
      end
    end
    arr
  end

end

sim = ShowInputMenu.new()
sim.show()
puts sim.show().class

#puts doc

#puts doc.elements['root/first/second/third'].text

#doc.elements.each('root/first/second/third') do |element|
#  puts element.text
#end

