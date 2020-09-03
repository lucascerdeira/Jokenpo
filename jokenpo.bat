@echo off
title Exercicio - Jo Ken Po
mode 70,20
color 0a
set /p nome= Informe o seu nome:

:inicio
cls

echo ****
echo Que o Jogo Comece!
echo 	JO-KEN-PO
echo ****
echo  [1] Pedra
echo  [2] Papel
echo  [3] Tesoura
echo  [4] Lagarto
echo  [5] Spock
echo  [6] Encerrar Jogo
echo  [7] Regras do Jogo
echo ***

set  pc=0 
set  vitoria=%vitoria%
set  empate=%empate% 
set  derrota=%derrota% 

echo _____________
echo Vitora: %vitoria%
echo _____________
echo Derrota: %derrota%
echo _____________
echo Empate: %empate%

set /p user=Faca sua jogada: 

if /i %user% == 1 (goto:pedra)
if /i %user% == 2 (goto:papel)
if /i %user% == 3 (goto:tesoura)
if /i %user% == 4 (goto:lagarto)
if /i %user% == 5 (goto:spock)
if /i %user% == 6 (goto:encerrar)
if /i %user% == 7 (goto:regras)

rem :Jogo
:pedra
    set /a pc=(%random% %% 5) + 1
    echo O computador jogou... %pc%

        if %pc% == 1 (goto empate)
        if %pc% == 2 (goto derrota)
        if %pc% == 3 (goto vitoria)
        if %pc% == 4 (goto vitoria)
        if %pc% == 5 (goto derrota)

    pause > nul
:papel 
     set /a pc=(%random% %% 5) + 1
     echo O computador jogou... %pc%

        if %pc% == 1 (goto vitoria)
        if %pc% == 2 (goto empate)
        if %pc% == 3 (goto derrota)
        if %pc% == 4 (goto derrota)
        if %pc% == 5 (goto vitoria)

    pause > nul

:tesoura

     set /a pc=(%random% %% 5) + 1
     echo O computador jogou... %pc%

        if %pc% == 1 (goto derrota)
        if %pc% == 2 (goto vitoria)
        if %pc% == 3 (goto empate)
        if %pc% == 4 (goto vitoria)
        if %pc% == 5 (goto derrota)

    pause > nul

:lagarto
    set /a pc=(%random% %% 5) + 1
    echo O computador jogou... %pc%

        if %pc% == 1 (goto derrota)
        if %pc% == 2 (goto vitoria)
        if %pc% == 3 (goto derrota)
        if %pc% == 4 (goto lagarto)
        if %pc% == 5 (goto vitoria)    

    pause > nul

:spock
     set /a pc=(%random% %% 5) + 1
     echo O computador jogou... %pc%

        if %pc% == 1 (goto vitoria)
        if %pc% == 2 (goto derrota)
        if %pc% == 3 (goto vitoria)
        if %pc% == 4 (goto derrota)
        if %pc% == 5 (goto empate)
    pause > nul

:encerrar
set /p fim=Deseja sair?  [S/N]
if /i %fim% == s (exit) else (
    goto inicio
)
pause > nul

:regras

echo ***
echo REGRAS DO JOGO
echo ***
echo Pedra:
echo ---Pedra empata com Pedra; Pedra ganha de Tesoura e Lagarto; Pedra perde de Papel e Spock
echo.
echo Papel:
echo ---Papel empata com Papel; Papel ganha de Pedra e Spock; Papel perde de Tesoura e Lagarto
echo.
echo Tesoura:
echo ---Tesoura empata com Tesoura; Tesoura ganha de Papel e Lagarto; Tesoura perde de Pedra e Spock
echo.
echo Lagarto:
echo ---Lagarto empata com Lagarto; Lagarto ganha de Papel e Spock; Lagarto perde de Pedra e Tesoura
echo.
echo Spock:
echo ---Spock empata com Spock; Spock ganha de Tesoura e Pedra; Spock perde de Lagarto e Papel
echo.
echo                Aperte enter para voltar ao jogo!

pause > nul
goto:inicio

:empate
    echo *****
	echo  %nome%, Deu empate Bora Jogar
	echo *****
    set /a empate=%empate%+1
    pause > nul
    goto inicio


:vitoria

    echo *****
	echo Parabens %nome% Voce Venceu
	echo *****
    set /a vitoria=%vitoria%+1
    pause > nul
    goto inicio

:derrota
    echo *****
	echo %nome%, Vitoria para o COMPUTADOR
	echo *****
    set /a derrota=%derrota%+1
    pause > nul
    goto inicio