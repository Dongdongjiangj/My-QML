@echo off
echo **********************************************
echo ��Դ�ļ�����������
echo ����:����ʯ
echo ���:2313828706
echo ����:kevinlq0912@163.com
echo ��ҳ:http://kevinlq.com/
echo **********************************************

echo.
echo ��ʼʱ�� %DATE%%TIME%
echo.

title ��Դ�ļ����ܴ���
::���ô��ڴ�С
::mode con cols=70 lines=30
::�����������ɫ
color 2E
echo ��ǰ·��: %~df0

::���ñ������ļ�·��
set RCC_Foler=Bin
set RCC_FullFoler=%~dp0\%RCC_Foler%
echo ���õ�ǰ������·��Ϊ:%RCC_Foler%

::���ñ���ǰ����Դ�ļ����������޸�
set BuildBeforeName=qml.qrc
echo ���ñ������Դ�ļ�����Ϊ:%BuildBeforeName%

::���ñ�������Դ�ʼ���
set BuildAfterName=qml.rcc
echo ���ñ�������Դ�ļ�����Ϊ:%BuildAfterName%

::��⵱ǰ�������Դ·���Ƿ����
if exist %RCC_FullFoler% (
	echo �ļ�Ŀ¼ %RCC_FullFoler%�Ѿ�����
)else (
	echo �ļ�Ŀ¼ %RCC_FullFoler%������,���ڴ����ļ���
	md %RCC_FullFoler%
	if exist %RCC_FullFoler% (
		echo �Ѿ����� %RCC_FullFoler% ·��
	)else (
		echo �����ļ�·��ʧ��,���˳�
		goto stop
	)
)

echo ���ڱ���.....
%~dp0\Tool\MinGW\rcc.exe -binary %~dp0\%BuildBeforeName% -o %~dp0\Bin\%BuildAfterName%
echo.
echo �������......

echo.
echo ����ʱ�� %DATE%%TIME%
echo.

:stop
pause