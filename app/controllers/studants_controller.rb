class StudantsController < ApplicationController
  def create
    studant = Studant.create!(params[:studant])

    if studant.nil?
      render json: { status: 'error' }
    elsif studant.studant_type == 'arquitetura-na-pratica'
      render json: { status: 'arquitetura-na-pratica', message: "Olá, #{studant.name}! Obrigada pela inscrição! Você será redirecionado para o PagSeguro para prosseguir com o pagamento. Clique em OK para continuar!" }
    elsif studant.studant_type == 'pacote'
      render json: { status: 'pacote', message: "Olá, #{studant.name}! Obrigada pela inscrição! Você será redirecionado para o PagSeguro para prosseguir com o pagamento. Clique em OK para continuar!" }
    elsif studant.studant_type == 'ex-aluno-iluminacao'
      render json: { status: 'ex-aluno-iluminacao', message: "Olá, #{studant.name}! Obrigada por se inscrever! Vamos fazer a conferência da sua matrícula com a Arqflex e retornamos em até 48horas, por e-mail para que você possa fazer seu pagamento." }
    end
  end
end
