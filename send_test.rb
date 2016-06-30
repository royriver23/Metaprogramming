require 'pry'
require 'awesome_print'
AwesomePrint.pry!
class SendTest

    def publico
        'publico'
    end

    protected

    def protegido
        'protegido'
    end
    
    private
    
    def privado
        'privado'
    end
end
binding.pry