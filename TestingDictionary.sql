USE [master]
GO
/****** Object:  Database [СловарьТестировщика]    Script Date: 07.03.2024 15:16:03 ******/
CREATE DATABASE [СловарьТестировщика]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'СловарьТестировщика', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\СловарьТестировщика.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'СловарьТестировщика_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\СловарьТестировщика_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [СловарьТестировщика] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [СловарьТестировщика].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [СловарьТестировщика] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET ARITHABORT OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [СловарьТестировщика] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [СловарьТестировщика] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET  DISABLE_BROKER 
GO
ALTER DATABASE [СловарьТестировщика] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [СловарьТестировщика] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET RECOVERY FULL 
GO
ALTER DATABASE [СловарьТестировщика] SET  MULTI_USER 
GO
ALTER DATABASE [СловарьТестировщика] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [СловарьТестировщика] SET DB_CHAINING OFF 
GO
ALTER DATABASE [СловарьТестировщика] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [СловарьТестировщика] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [СловарьТестировщика] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [СловарьТестировщика] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'СловарьТестировщика', N'ON'
GO
ALTER DATABASE [СловарьТестировщика] SET QUERY_STORE = ON
GO
ALTER DATABASE [СловарьТестировщика] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [СловарьТестировщика]
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 07.03.2024 15:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Понятие] [varchar](max) NOT NULL,
	[Определение] [varchar](max) NOT NULL,
	[Источник] [varchar](200) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dictionary] ON 

INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (1, N'Автоматизированное тестирование', N'Набор техник, подходов и инструментальных средств, позволяющий исключить человека из выполнения некоторых задач в процессе тестирования.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (2, N'Альфа-тестирование', N'Тестирование, которое выполняется внутри организации-разработчика с возможным частичным привлечением конечных пользователей. Может являться формой внутреннего приёмочного тестирования.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (3, N'Бета-тестирование', N'Тестирование, которое выполняется вне организации-разработчика с активным привлечением конечных пользователей/заказчиков.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (4, N'Дефект', N'Отклонение фактического результата от ожиданий наблюдателя, сформированных на основе требований, спецификаций, иной документации или опыта и здравого смысла.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (5, N'Динамическое тестирование', N'Тестирование с запуском кода на исполнение.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (6, N'Интеграционное тестирование', N'Тестирование, которое направлено на проверку взаимодействия между несколькими частями приложения (каждая из которых, в свою очередь, проверена отдельно на стадии модульного тестирования).', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (7, N'Метод белого ящика', N'Метод тестирования, в рамках которого у тестировщика есть доступ к внутренней структуре и коду приложения, а также есть достаточно знаний для
понимания увиденного.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (8, N'Метод серого ящика', N'Комбинация методов белого ящика и чёрного ящика, состоящая в том, что к части кода и архитектуры у тестировщика доступ есть, а к части — нет.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (9, N'Метод чёрного ящика', N'Метод тестирования, в рамках которого у тестировщика либо нет доступа к внутренней структуре и коду приложения, либо недостаточно знаний для их понимания, либо он сознательно не обращается к этим данным в процессе тестирования.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (10, N'Модель разработки ПО', N'Структура, систематизирующая различные виды проектной деятельности, их взаимодействие и последовательность в процессе раз работки ПО.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (11, N'Модульное (компонентное) тестирование', N'Тестирование, направленное на проверку от дельных небольших частей приложения, которые (как правило) можно исследовать изолированно от других подобных частей.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (12, N'Набор тест кейсов', N'Совокупность тест-кейсов, выбранных с некоторой общей целью или по некоторому общему признаку.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (13, N'Негативное тестирование', N'Тестирование, направленное на исследование работы приложения в ситуациях, когда с ним выполняются (некорректные) операции и/или используются данные, потенциально приводящие к ошибкам.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (14, N'Нефункциональное тестирование', N'Тестирование, направленное на проверку не функциональных особенностей приложения (корректность реализации нефункциональных требований), таких как удобство использования, совместимость, производительность, безопасность и т.д.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (15, N'Нефункциональные требования', N'Требования, описывающие свойства системы (удобство использования, безопасность, надёжность, расширяемость и т.д.), которыми она должна обладать при реализации своего поведения.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (16, N'Отчёт о дефекте', N'Документ, описывающий и приоритизирущий
обнаруженный дефект, а также содействующий его устранению.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (17, N'Отчёт о результатах тестирования', N'Документ, обобщающий результаты работ по тестированию и содержащий информацию, достаточную для соотнесения текущей ситуации с тест-планом и принятия необходимых правленческих решений.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (18, N'Позитивное тестирование', N'Тестирование, направленное на исследование приложения в ситуации, когда все действия выполняются строго по инструкции без каких бы то ни было ошибок, отклонений, ввода неверных данных и т.д.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (19, N'Ручное тестирование', N'Тестирование, в котором тест-кейсы выполняются человеком вручную без использования средств автоматизации.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (20, N'Системное тестирование', N'Тестирование, направленное на проверку всего приложения как единого целого, собранного из частей, проверенных на стадиях модульного и интеграционного тестирования.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (21, N'Статическое тестирование', N'Тестирование без запуска кода на исполнение.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (22, N'Тест', N'Набор из одного или нескольких тест-кейсов.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (23, N'Тестирование программного обеспечения', N'Процесс анализа программного средства и сопутствующей документации с целью выявления дефектов и повышения качества продукта.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (24, N'Тестирование 
производительности', N'Исследование показателей скорости реакции приложения на внешние воздействия при различной по характеру и интенсивности нагрузке', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (25, N'Тест-кейс', N'Набор входных данных, условий выполнения и
ожидаемых результатов, разработанный с целью проверки того или иного свойства или поведения программного средства. Под тест кейсом также может пониматься соответствующий документ, представляющий формальную запись тест-кейса.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (26, N'Требование', N'Описание того, какие функции и с соблюдением каких
условий должно выполнять приложение в процессе решения полезной для пользователя задачи.', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (27, N'Функциональное тестирование', N'Тестирование, направленное на проверку корректности работы функциональности приложения 5 (корректность реализации функциональных требований).', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (28, N'Функциональные требования', N'Требования, описывающие поведение системы, т.е. её действия (вычисления, преобразования, проверки, обработку и т.д.)', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (29, N'При?мочное тестирование', N'Формализованное тестирование, направленное на проверку приложения с точки зрения конечного пользователя/заказчика и вынесения решения о том, принимает ли заказчик работу у исполнителя (проектной команды).', N'http://svyatoslav.biz/software_testing_book')
INSERT [dbo].[Dictionary] ([id], [Понятие], [Определение], [Источник]) VALUES (30, N'Расширенное тестирование', N'Тестирование, направленное на исследование всей заявленной в требованиях функциональности — даже той, которая низко про ранжирована по степени важности.', N'http://svyatoslav.biz/software_testing_book')
SET IDENTITY_INSERT [dbo].[Dictionary] OFF
GO
USE [master]
GO
ALTER DATABASE [СловарьТестировщика] SET  READ_WRITE 
GO
