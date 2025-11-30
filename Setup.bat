@echo off
echo ============================================
echo   Configurando ambiente do projeto
echo   WineChem
echo ============================================

:: 1. Criar ambiente virtual (se nao existir)
if not exist "venv" (
    echo Criando ambiente virtual...
    python -m venv venv
)

:: 2. Ativar ambiente virtual
echo Ativando ambiente virtual...
call venv\Scripts\activate

:: 3. Atualizar pip
echo Atualizando pip...
python -m pip install --upgrade pip

:: 4. Instalar dependencias do projeto
echo Instalando dependencias do requirements.txt...
pip install -r requirements\requirements.txt

:: 5. Instalar pacotes adicionais essenciais
echo Instalando pacotes adicionais...
pip install ipykernel

:: 6. Criar kernel Jupyter sem abrir notebook
echo Registrando kernel do Jupyter...
python -m ipykernel install --user --name=WineChem --display-name "Python (WineChem-)"

echo ============================================
echo   Setup concluido!
echo   Kernel 'Python (WineChem)' disponivel no Jupyter
echo ============================================

pause
