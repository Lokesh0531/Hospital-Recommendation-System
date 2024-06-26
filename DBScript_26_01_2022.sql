USE [hospital]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 26/01/2022 1:45:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Passwords] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[TalukaId] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DischargePatient]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DischargePatient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[PatientStatusId] [int] NOT NULL,
	[DischargeDate] [datetime] NOT NULL,
	[NoOfDayForRecover] [int] NOT NULL,
	[TotalRentCost] [decimal](18, 2) NOT NULL,
	[TreatmentCost] [decimal](18, 2) NOT NULL,
	[TotalFinalCost] [decimal](18, 2) NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_DischargePatient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiseaseMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiseaseMaster](
	[DiseaseId] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DiseaseMaster] PRIMARY KEY CLUSTERED 
(
	[DiseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistrictMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistrictMaster](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[District] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DistrictMaster] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorMaster](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[DoctorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoctorMaster] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacilityMaster](
	[FacilityId] [int] IDENTITY(1,1) NOT NULL,
	[FacilityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FacilityMaster] PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalDoctors]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalDoctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_HospitalDoctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalFacility]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalFacility](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FacilityId] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_HospitalFacility] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalPatients]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalPatients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DateOfAdmission] [datetime] NOT NULL,
	[HospitalId] [int] NOT NULL,
	[DateOfDischarge] [datetime] NULL,
 CONSTRAINT [PK_HospitalPatients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalRegistration]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalRegistration](
	[HospitalId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [nvarchar](100) NOT NULL,
	[HospitalEmail] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Passwords] [nvarchar](50) NOT NULL,
	[StateId] [int] NULL,
	[DistrictId] [int] NULL,
	[TalukaId] [int] NULL,
	[CityId] [int] NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_HospitalRegistration] PRIMARY KEY CLUSTERED 
(
	[HospitalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalRoomDetail]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalRoomDetail](
	[RoomDetailId] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[RentPerDay] [decimal](18, 2) NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_HospitalRoomDetail] PRIMARY KEY CLUSTERED 
(
	[RoomDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalTreatment]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalTreatment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[TreatmentId] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_HospitalTreatment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientRegistration]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientRegistration](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[AadharNumber] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[Passwords] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PatientRegistration] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientStatusMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientStatusMaster](
	[PatientStatusId] [int] IDENTITY(1,1) NOT NULL,
	[PatientStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PatientStatusMaster] PRIMARY KEY CLUSTERED 
(
	[PatientStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientTreatments]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientTreatments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[TreatmentId] [int] NOT NULL,
	[TreatentCost] [decimal](18, 2) NOT NULL,
	[OtherCharges] [decimal](18, 2) NOT NULL,
	[TotalCost] [decimal](18, 2) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[Discharged] [bit] NULL,
 CONSTRAINT [PK_PatientTreatments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[PatientId] [int] NOT NULL,
	[PatientTreatmentId] [int] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomMaster](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RoomMaster] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NOT NULL,
	[ServiceDetail] [nvarchar](max) NOT NULL,
	[HospitalId] [int] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TalukaMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TalukaMaster](
	[TalukaId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[Taluka] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TalukaMaster] PRIMARY KEY CLUSTERED 
(
	[TalukaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentMaster]    Script Date: 26/01/2020 1:45:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatmentMaster](
	[TreatmentId] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseId] [int] NOT NULL,
	[Treatment] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TreatmentMaster] PRIMARY KEY CLUSTERED 
(
	[TreatmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [FullName], [Email], [PhoneNumber], [Passwords]) VALUES (1, N'Administrator', N'admin@gmail.com', N'999999999', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[CityMaster] ON 

INSERT [dbo].[CityMaster] ([CityId], [StateId], [DistrictId], [TalukaId], [City]) VALUES (2, 9, 1, 1, N'ambad')
INSERT [dbo].[CityMaster] ([CityId], [StateId], [DistrictId], [TalukaId], [City]) VALUES (1002, 10, 2, 2, N'Athwaline')
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
SET IDENTITY_INSERT [dbo].[DischargePatient] ON 

INSERT [dbo].[DischargePatient] ([Id], [PatientId], [PatientStatusId], [DischargeDate], [NoOfDayForRecover], [TotalRentCost], [TreatmentCost], [TotalFinalCost], [HospitalId]) VALUES (1006, 2, 2, CAST(N'2020-01-25T00:00:00.000' AS DateTime), 74, CAST(51800.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(61800.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[DischargePatient] ([Id], [PatientId], [PatientStatusId], [DischargeDate], [NoOfDayForRecover], [TotalRentCost], [TreatmentCost], [TotalFinalCost], [HospitalId]) VALUES (1007, 2, 2, CAST(N'2020-01-25T00:00:00.000' AS DateTime), 3, CAST(2100.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(10100.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[DischargePatient] OFF
SET IDENTITY_INSERT [dbo].[DiseaseMaster] ON 

INSERT [dbo].[DiseaseMaster] ([DiseaseId], [DiseaseName]) VALUES (2, N'Blood Cancer')
INSERT [dbo].[DiseaseMaster] ([DiseaseId], [DiseaseName]) VALUES (3, N'Asthma')
INSERT [dbo].[DiseaseMaster] ([DiseaseId], [DiseaseName]) VALUES (4, N'Thyroid')
SET IDENTITY_INSERT [dbo].[DiseaseMaster] OFF
SET IDENTITY_INSERT [dbo].[DistrictMaster] ON 

INSERT [dbo].[DistrictMaster] ([DistrictId], [StateId], [District]) VALUES (1, 9, N'Nashik')
INSERT [dbo].[DistrictMaster] ([DistrictId], [StateId], [District]) VALUES (2, 10, N'Surat')
SET IDENTITY_INSERT [dbo].[DistrictMaster] OFF
SET IDENTITY_INSERT [dbo].[DoctorMaster] ON 

INSERT [dbo].[DoctorMaster] ([DoctorId], [DiseaseId], [DoctorName]) VALUES (1, 2, N'Dr. Piyush Goyal')
INSERT [dbo].[DoctorMaster] ([DoctorId], [DiseaseId], [DoctorName]) VALUES (2, 3, N'Dr. Meghna Rawat')
INSERT [dbo].[DoctorMaster] ([DoctorId], [DiseaseId], [DoctorName]) VALUES (3, 4, N'Dr. Shahi Patil')
SET IDENTITY_INSERT [dbo].[DoctorMaster] OFF
SET IDENTITY_INSERT [dbo].[FacilityMaster] ON 

INSERT [dbo].[FacilityMaster] ([FacilityId], [FacilityName]) VALUES (2, N'MRI Body Scanning')
SET IDENTITY_INSERT [dbo].[FacilityMaster] OFF
SET IDENTITY_INSERT [dbo].[HospitalDoctors] ON 

INSERT [dbo].[HospitalDoctors] ([Id], [DiseaseId], [DoctorId], [HospitalId]) VALUES (2, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[HospitalDoctors] OFF
SET IDENTITY_INSERT [dbo].[HospitalFacility] ON 

INSERT [dbo].[HospitalFacility] ([Id], [FacilityId], [Cost], [HospitalId]) VALUES (2, 2, CAST(300.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[HospitalFacility] OFF
SET IDENTITY_INSERT [dbo].[HospitalRegistration] ON 

INSERT [dbo].[HospitalRegistration] ([HospitalId], [HospitalName], [HospitalEmail], [PhoneNumber], [Passwords], [StateId], [DistrictId], [TalukaId], [CityId], [Address]) VALUES (1, N'JJ Hospital', N'jj@gmail.com', N'989898989', N'123', 9, 1, 1, 2, N'Near Station, Hanuman Mandir')
INSERT [dbo].[HospitalRegistration] ([HospitalId], [HospitalName], [HospitalEmail], [PhoneNumber], [Passwords], [StateId], [DistrictId], [TalukaId], [CityId], [Address]) VALUES (3, N'Apolo', N'apolo@gmail.com', N'7878787877', N'123', 9, 1, 1, 2, N'Mathuranga Street')
SET IDENTITY_INSERT [dbo].[HospitalRegistration] OFF
SET IDENTITY_INSERT [dbo].[HospitalRoomDetail] ON 

INSERT [dbo].[HospitalRoomDetail] ([RoomDetailId], [RoomId], [RentPerDay], [HospitalId]) VALUES (2, 3, CAST(700.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[HospitalRoomDetail] OFF
SET IDENTITY_INSERT [dbo].[HospitalTreatment] ON 

INSERT [dbo].[HospitalTreatment] ([Id], [DiseaseId], [TreatmentId], [Cost], [HospitalId]) VALUES (2, 2, 2, CAST(7000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[HospitalTreatment] ([Id], [DiseaseId], [TreatmentId], [Cost], [HospitalId]) VALUES (3, 2, 2, CAST(21000.00 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[HospitalTreatment] OFF
SET IDENTITY_INSERT [dbo].[PatientRegistration] ON 

INSERT [dbo].[PatientRegistration] ([PatientId], [AadharNumber], [Name], [Address], [DOB], [ContactNumber], [Passwords]) VALUES (2, N'454554544445', N'John Martin', N'104, Median park, LO -15, USA', CAST(N'1989-01-20T00:00:00.000' AS DateTime), N'9898889899', N'123')
SET IDENTITY_INSERT [dbo].[PatientRegistration] OFF
SET IDENTITY_INSERT [dbo].[PatientStatusMaster] ON 

INSERT [dbo].[PatientStatusMaster] ([PatientStatusId], [PatientStatus]) VALUES (2, N'Completed')
INSERT [dbo].[PatientStatusMaster] ([PatientStatusId], [PatientStatus]) VALUES (3, N'Partial Completed')
SET IDENTITY_INSERT [dbo].[PatientStatusMaster] OFF
SET IDENTITY_INSERT [dbo].[RoomMaster] ON 

INSERT [dbo].[RoomMaster] ([RoomId], [RoomType]) VALUES (2, N'General')
INSERT [dbo].[RoomMaster] ([RoomId], [RoomType]) VALUES (3, N'Deluxe')
SET IDENTITY_INSERT [dbo].[RoomMaster] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceId], [ServiceName], [ServiceDetail], [HospitalId]) VALUES (4, N'Heart Operation', N'All Type Of Heart Operation.', 1)
INSERT [dbo].[Services] ([ServiceId], [ServiceName], [ServiceDetail], [HospitalId]) VALUES (5, N'MRI Full Body Scan', N'Scan all part of body', 1)
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (1, N'ANDAMAN & NICOBAR ISLANDS')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (2, N'PUNJAB')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (3, N'JAMMU & KASHMIR')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (4, N'HIMACHAL PRADESH')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (5, N'CHANDIGARH')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (6, N'UTTARANCHAL')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (7, N'HARYANA')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (8, N'DELHI')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (9, N'MAHARASHTRA')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (10, N'GUJARAT')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (11, N'KARNATAKA')
INSERT [dbo].[StateMaster] ([StateId], [State]) VALUES (12, N'KERALA')
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
SET IDENTITY_INSERT [dbo].[TalukaMaster] ON 

INSERT [dbo].[TalukaMaster] ([TalukaId], [StateId], [DistrictId], [Taluka]) VALUES (1, 9, 1, N'Dindori')
INSERT [dbo].[TalukaMaster] ([TalukaId], [StateId], [DistrictId], [Taluka]) VALUES (2, 10, 2, N'Surat')
SET IDENTITY_INSERT [dbo].[TalukaMaster] OFF
SET IDENTITY_INSERT [dbo].[TreatmentMaster] ON 

INSERT [dbo].[TreatmentMaster] ([TreatmentId], [DiseaseId], [Treatment]) VALUES (2, 2, N'Curling')
INSERT [dbo].[TreatmentMaster] ([TreatmentId], [DiseaseId], [Treatment]) VALUES (3, 3, N'Inhalers')
INSERT [dbo].[TreatmentMaster] ([TreatmentId], [DiseaseId], [Treatment]) VALUES (4, 4, N'Radioactive iodine')
SET IDENTITY_INSERT [dbo].[TreatmentMaster] OFF
