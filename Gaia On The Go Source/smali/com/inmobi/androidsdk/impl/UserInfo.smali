.class public final Lcom/inmobi/androidsdk/impl/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private adUnitSlot:Ljava/lang/String;

.field private age:I

.field private appBId:Ljava/lang/String;

.field private appDisplayName:Ljava/lang/String;

.field private appVer:Ljava/lang/String;

.field private applicationContext:Landroid/content/Context;

.field private areaCode:Ljava/lang/String;

.field private currentSDKVersion:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private deviceBTHW:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceMachineHW:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceStorageSize:Ljava/lang/String;

.field private deviceSystemName:Ljava/lang/String;

.field private deviceSystemVersion:Ljava/lang/String;

.field private education:Lcom/inmobi/androidsdk/EducationType;

.field private ethnicity:Lcom/inmobi/androidsdk/EthnicityType;

.field private gender:Lcom/inmobi/androidsdk/GenderType;

.field private income:I

.field private interests:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private lastLocationUpdateDT:J

.field private lat:D

.field private locAccuracy:D

.field private localization:Ljava/lang/String;

.field locationDeniedByUser:Z

.field locationInquiryAllowed:Z

.field private locationManager:Landroid/location/LocationManager;

.field locationMethodImplemented:Z

.field private loctionEngineSwitchedON:Z

.field private lon:D

.field private networkType:Ljava/lang/String;

.field private phoneDefaultUserAgent:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private refTagKey:Ljava/lang/String;

.field private refTagValue:Ljava/lang/String;

.field private requestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private screenDensity:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private searchString:Ljava/lang/String;

.field private siteId:Ljava/lang/String;

.field private testMode:Z

.field private testModeAdActionType:Ljava/lang/String;

.field private validGeoInfo:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "appct"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lastLocationUpdateDT:J

    .line 89
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagKey:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagValue:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->adUnitSlot:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenSize:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenDensity:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->applicationContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private fillDeviceInfo()V
    .locals 32

    .prologue
    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_8

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceId(Ljava/lang/String;)V

    .line 926
    sget-object v30, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceName(Ljava/lang/String;)V

    .line 928
    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 929
    sget-object v30, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_a

    sget-object v30, Landroid/os/Build;->ID:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceSystemName(Ljava/lang/String;)V

    .line 932
    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_b

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 931
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceSystemVersion(Ljava/lang/String;)V

    .line 934
    invoke-static {}, Lcom/inmobi/androidsdk/impl/MemoryStatus;->getTotalInternalMemorySize()J

    move-result-wide v11

    .line 935
    .local v11, "inMem":J
    invoke-static {}, Lcom/inmobi/androidsdk/impl/MemoryStatus;->getTotalExternalMemorySize()J

    move-result-wide v9

    .line 936
    .local v9, "extMem":J
    const-string v8, "InBuilt:"

    .line 937
    .local v8, "deviceStorage":Ljava/lang/String;
    const-wide/16 v30, 0x0

    cmp-long v30, v11, v30

    if-lez v30, :cond_0

    .line 938
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/inmobi/androidsdk/impl/MemoryStatus;->formatSize(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 940
    :cond_0
    const-wide/16 v30, 0x0

    cmp-long v30, v9, v30

    if-lez v30, :cond_1

    .line 941
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, ",Ext:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 942
    invoke-static {v9, v10}, Lcom/inmobi/androidsdk/impl/MemoryStatus;->formatSize(J)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 941
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 944
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceStorageSize(Ljava/lang/String;)V

    .line 946
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v30

    const-string v31, "os.name"

    invoke-virtual/range {v30 .. v31}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 947
    .local v17, "machineOSHW":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v30

    .line 948
    const-string v31, "os.version"

    .line 947
    invoke-virtual/range {v30 .. v31}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 949
    .local v18, "machineVerHW":Ljava/lang/String;
    if-eqz v17, :cond_2

    if-eqz v18, :cond_2

    .line 950
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "(Android:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 951
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceMachineHW(Ljava/lang/String;)V

    .line 955
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Landroid/content/Context;)V

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 959
    .local v26, "sinceBTmilliseconds":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 960
    .local v4, "cald":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 961
    sub-long v30, v30, v26

    .line 960
    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 962
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 963
    .local v3, "btdt":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceBTHW(Ljava/lang/String;)V

    .line 966
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    .line 967
    .local v16, "linfo":Ljava/util/Locale;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    .line 968
    .local v15, "language":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 969
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 970
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 971
    .local v7, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 972
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 986
    .end local v7    # "country":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocalization(Ljava/lang/String;)V

    .line 988
    const-string v30, "2.3"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setCurrentSDKVersion(Ljava/lang/String;)V

    .line 990
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v28, "uagent":Ljava/lang/StringBuilder;
    const-string v30, "InMobi_androidwebsdk="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string v30, "2.3"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v30, " ("

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v30, "; "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v30, " "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v30, "; HW "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceMachineHW()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v30, ")"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setUserAgent(Ljava/lang/String;)V

    .line 1008
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1009
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1011
    .local v19, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x80

    .line 1010
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1013
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v13, :cond_4

    .line 1014
    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAppBId(Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAppDisplayName(Ljava/lang/String;)V

    .line 1021
    :cond_4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x80

    .line 1020
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    .line 1029
    .local v24, "pInfo":Landroid/content/pm/PackageInfo;
    const/16 v29, 0x0

    .line 1030
    .local v29, "ver":Ljava/lang/String;
    if-eqz v24, :cond_6

    .line 1031
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1032
    if-eqz v29, :cond_5

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1033
    :cond_5
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1036
    :cond_6
    if-eqz v29, :cond_7

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAppVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1042
    .end local v6    # "context":Landroid/content/Context;
    .end local v13    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "manager":Landroid/content/pm/PackageManager;
    .end local v24    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v29    # "ver":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_8

    .line 1043
    const-string v30, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceId(Ljava/lang/String;)V

    .line 1047
    .end local v3    # "btdt":Ljava/lang/String;
    .end local v4    # "cald":Ljava/util/Calendar;
    .end local v8    # "deviceStorage":Ljava/lang/String;
    .end local v9    # "extMem":J
    .end local v11    # "inMem":J
    .end local v15    # "language":Ljava/lang/String;
    .end local v16    # "linfo":Ljava/util/Locale;
    .end local v17    # "machineOSHW":Ljava/lang/String;
    .end local v18    # "machineVerHW":Ljava/lang/String;
    .end local v26    # "sinceBTmilliseconds":J
    .end local v28    # "uagent":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v23, 0x0

    .line 1051
    .local v23, "netTypeName":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    .line 1052
    const-string v31, "connectivity"

    .line 1051
    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1050
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 1053
    .local v5, "comMgr":Landroid/net/ConnectivityManager;
    if-eqz v5, :cond_9

    .line 1054
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    .line 1056
    .local v20, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    .line 1057
    .local v22, "netType":I
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v21

    .line 1058
    .local v21, "netSubType":I
    const/16 v30, 0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 1059
    const-string v23, "wifi"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1075
    .end local v5    # "comMgr":Landroid/net/ConnectivityManager;
    .end local v20    # "netInfo":Landroid/net/NetworkInfo;
    .end local v21    # "netSubType":I
    .end local v22    # "netType":I
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setNetworkType(Ljava/lang/String;)V

    .line 1077
    return-void

    .line 930
    .end local v23    # "netTypeName":Ljava/lang/String;
    :cond_a
    const-string v30, "BASE"

    goto/16 :goto_0

    .line 933
    :cond_b
    const-string v30, "1.0"

    goto/16 :goto_1

    .line 975
    .restart local v3    # "btdt":Ljava/lang/String;
    .restart local v4    # "cald":Ljava/util/Calendar;
    .restart local v8    # "deviceStorage":Ljava/lang/String;
    .restart local v9    # "extMem":J
    .restart local v11    # "inMem":J
    .restart local v15    # "language":Ljava/lang/String;
    .restart local v16    # "linfo":Ljava/util/Locale;
    .restart local v17    # "machineOSHW":Ljava/lang/String;
    .restart local v18    # "machineVerHW":Ljava/lang/String;
    .restart local v26    # "sinceBTmilliseconds":J
    :cond_c
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v30

    .line 976
    const-string v31, "user.language"

    .line 975
    invoke-virtual/range {v30 .. v31}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 977
    .local v14, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v30

    .line 978
    const-string v31, "user.region"

    .line 977
    invoke-virtual/range {v30 .. v31}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 979
    .local v25, "region":Ljava/lang/String;
    if-eqz v14, :cond_d

    if-eqz v25, :cond_d

    .line 980
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 982
    :cond_d
    if-nez v15, :cond_3

    .line 983
    const-string v15, "en"

    goto/16 :goto_2

    .line 1060
    .end local v3    # "btdt":Ljava/lang/String;
    .end local v4    # "cald":Ljava/util/Calendar;
    .end local v8    # "deviceStorage":Ljava/lang/String;
    .end local v9    # "extMem":J
    .end local v11    # "inMem":J
    .end local v14    # "lang":Ljava/lang/String;
    .end local v15    # "language":Ljava/lang/String;
    .end local v16    # "linfo":Ljava/util/Locale;
    .end local v17    # "machineOSHW":Ljava/lang/String;
    .end local v18    # "machineVerHW":Ljava/lang/String;
    .end local v25    # "region":Ljava/lang/String;
    .end local v26    # "sinceBTmilliseconds":J
    .restart local v5    # "comMgr":Landroid/net/ConnectivityManager;
    .restart local v20    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v21    # "netSubType":I
    .restart local v22    # "netType":I
    .restart local v23    # "netTypeName":Ljava/lang/String;
    :cond_e
    if-nez v22, :cond_9

    .line 1061
    :try_start_2
    const-string v23, "carrier"

    .line 1062
    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1063
    const-string v23, "gprs"

    goto :goto_4

    .line 1064
    :cond_f
    const/16 v30, 0x2

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 1065
    const-string v23, "edge"

    goto :goto_4

    .line 1066
    :cond_10
    const/16 v30, 0x3

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 1067
    const-string v23, "umts"

    goto :goto_4

    .line 1068
    :cond_11
    if-nez v21, :cond_9

    .line 1069
    const-string v23, "carrier"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1073
    .end local v5    # "comMgr":Landroid/net/ConnectivityManager;
    .end local v20    # "netInfo":Landroid/net/NetworkInfo;
    .end local v21    # "netSubType":I
    .end local v22    # "netType":I
    :catch_0
    move-exception v30

    goto :goto_4

    .line 1039
    .end local v23    # "netTypeName":Ljava/lang/String;
    .restart local v3    # "btdt":Ljava/lang/String;
    .restart local v4    # "cald":Ljava/util/Calendar;
    .restart local v8    # "deviceStorage":Ljava/lang/String;
    .restart local v9    # "extMem":J
    .restart local v11    # "inMem":J
    .restart local v15    # "language":Ljava/lang/String;
    .restart local v16    # "linfo":Ljava/util/Locale;
    .restart local v17    # "machineOSHW":Ljava/lang/String;
    .restart local v18    # "machineVerHW":Ljava/lang/String;
    .restart local v26    # "sinceBTmilliseconds":J
    .restart local v28    # "uagent":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v30

    goto/16 :goto_3
.end method

.method private fillLocationInfo(Landroid/location/Location;)V
    .locals 2
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 844
    if-eqz p1, :cond_0

    .line 845
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 846
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLat(D)V

    .line 847
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLon(D)V

    .line 848
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocAccuracy(D)V

    .line 849
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLastLocationUpdateDT(J)V

    .line 852
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->switchOffLocUpdate()V

    .line 854
    :cond_0
    return-void
.end method

.method private getLocationCoordinates()[D
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 889
    const/4 v3, 0x0

    .line 891
    .local v3, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 892
    const-string v7, "location"

    .line 891
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 890
    check-cast v2, Landroid/location/LocationManager;

    .line 893
    .local v2, "locManager":Landroid/location/LocationManager;
    invoke-virtual {v2, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    .line 900
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 909
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [D

    .line 910
    .local v0, "gps":[D
    if-eqz v3, :cond_1

    .line 911
    const/4 v6, 0x4

    new-array v0, v6, [D

    .line 912
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    aput-wide v7, v0, v6

    .line 913
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v0, v9

    .line 914
    const/4 v6, 0x2

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, v0, v6

    .line 915
    const/4 v6, 0x3

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    long-to-double v7, v7

    aput-wide v7, v0, v6

    .line 917
    :cond_1
    return-object v0

    .line 901
    .end local v0    # "gps":[D
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 902
    .local v4, "provider":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 903
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 904
    if-nez v3, :cond_0

    .line 900
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1083
    .local v0, "android_id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1084
    const-string v2, "android_id"

    .line 1082
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1087
    :goto_0
    if-nez v0, :cond_0

    .line 1090
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1091
    const-string v2, "android_id"

    .line 1089
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1096
    :cond_0
    :goto_1
    return-object v0

    .line 1092
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1085
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private verifyLocationPermission()V
    .locals 4

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 859
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 858
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 860
    .local v0, "coarseLocationAccessPermission":I
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 862
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 861
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, "fineLocationAccessPermission":I
    if-eqz v0, :cond_0

    .line 864
    if-eqz v1, :cond_0

    .line 865
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationDeniedByUser(Z)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationDeniedByUser(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->adUnitSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->age:I

    return v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appBId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appVer:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->currentSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceBTHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceBTHW:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMachineHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceMachineHW:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStorageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceStorageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceSystemName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/EducationType;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->education:Lcom/inmobi/androidsdk/EducationType;

    return-object v0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/EthnicityType;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->ethnicity:Lcom/inmobi/androidsdk/EthnicityType;

    return-object v0
.end method

.method public getGender()Lcom/inmobi/androidsdk/GenderType;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->gender:Lcom/inmobi/androidsdk/GenderType;

    return-object v0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->income:I

    return v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->interests:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method getLastLocationUpdateDT()J
    .locals 2

    .prologue
    .line 671
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lastLocationUpdateDT:J

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 611
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lat:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locAccuracy:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->localization:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationManager:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 626
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lon:D

    return-wide v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->phoneDefaultUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Landroid/content/Context;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->phoneDefaultUserAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 732
    const-string v0, ""

    .line 734
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->phoneDefaultUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->requestParams:Ljava/util/Map;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenDensity:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method public getTestModeAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->testModeAdActionType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "InMobi_androidsdk=2.0"

    return-object v0
.end method

.method isLocationDeniedByUser()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationDeniedByUser:Z

    return v0
.end method

.method isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationInquiryAllowed:Z

    return v0
.end method

.method isLocationMethodImplemented()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationMethodImplemented:Z

    return v0
.end method

.method isLoctionEngineSwitchedON()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->loctionEngineSwitchedON:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->testMode:Z

    return v0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->validGeoInfo:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->fillLocationInfo(Landroid/location/Location;)V

    .line 873
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->switchOffLocUpdate()V

    .line 877
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 880
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 883
    if-nez p2, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->switchOffLocUpdate()V

    .line 886
    :cond_0
    return-void
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitSlot"    # Ljava/lang/String;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->adUnitSlot:Ljava/lang/String;

    .line 1125
    return-void
.end method

.method setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->age:I

    .line 530
    return-void
.end method

.method setAppBId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appBId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appBId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method setAppDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appDisplayName"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appDisplayName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method setAppVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVer"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->appVer:Ljava/lang/String;

    .line 159
    return-void
.end method

.method setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->applicationContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method setAreaCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->areaCode:Ljava/lang/String;

    .line 402
    return-void
.end method

.method setCurrentSDKVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentSDKVersion"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->currentSDKVersion:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->dateOfBirth:Ljava/lang/String;

    .line 1129
    return-void
.end method

.method setDateOfBirth(Ljava/util/Date;)V
    .locals 4
    .param p1, "dateOfBirth"    # Ljava/util/Date;

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "dob":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 418
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 419
    .local v0, "cald":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .end local v0    # "cald":Ljava/util/Calendar;
    :cond_0
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->dateOfBirth:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setDeviceBTHW(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceBTHW"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceBTHW:Ljava/lang/String;

    .line 350
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceId:Ljava/lang/String;

    .line 189
    return-void
.end method

.method setDeviceMachineHW(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceMachineHW"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceMachineHW:Ljava/lang/String;

    .line 342
    return-void
.end method

.method setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceModel:Ljava/lang/String;

    .line 234
    return-void
.end method

.method setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceName:Ljava/lang/String;

    .line 219
    return-void
.end method

.method setDeviceStorageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceStorageSize"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceStorageSize:Ljava/lang/String;

    .line 327
    return-void
.end method

.method setDeviceSystemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceSystemName"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceSystemName:Ljava/lang/String;

    .line 249
    return-void
.end method

.method setDeviceSystemVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceSystemVersion"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->deviceSystemVersion:Ljava/lang/String;

    .line 264
    return-void
.end method

.method setEducation(Lcom/inmobi/androidsdk/EducationType;)V
    .locals 0
    .param p1, "education"    # Lcom/inmobi/androidsdk/EducationType;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->education:Lcom/inmobi/androidsdk/EducationType;

    .line 500
    return-void
.end method

.method setEthnicity(Lcom/inmobi/androidsdk/EthnicityType;)V
    .locals 0
    .param p1, "ethnicity"    # Lcom/inmobi/androidsdk/EthnicityType;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->ethnicity:Lcom/inmobi/androidsdk/EthnicityType;

    .line 515
    return-void
.end method

.method setGender(Lcom/inmobi/androidsdk/GenderType;)V
    .locals 0
    .param p1, "gender"    # Lcom/inmobi/androidsdk/GenderType;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->gender:Lcom/inmobi/androidsdk/GenderType;

    .line 440
    return-void
.end method

.method setIncome(I)V
    .locals 0
    .param p1, "income"    # I

    .prologue
    .line 484
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->income:I

    .line 485
    return-void
.end method

.method setInterests(Ljava/lang/String;)V
    .locals 0
    .param p1, "interests"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->interests:Ljava/lang/String;

    .line 545
    return-void
.end method

.method setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->keywords:Ljava/lang/String;

    .line 455
    return-void
.end method

.method setLastLocationUpdateDT(J)V
    .locals 0
    .param p1, "lastLocationUpdateDT"    # J

    .prologue
    .line 679
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lastLocationUpdateDT:J

    .line 680
    return-void
.end method

.method setLat(D)V
    .locals 0
    .param p1, "lat"    # D

    .prologue
    .line 619
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lat:D

    .line 620
    return-void
.end method

.method setLocAccuracy(D)V
    .locals 0
    .param p1, "locAccuracy"    # D

    .prologue
    .line 649
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locAccuracy:D

    .line 650
    return-void
.end method

.method setLocalization(Ljava/lang/String;)V
    .locals 0
    .param p1, "localization"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->localization:Ljava/lang/String;

    .line 204
    return-void
.end method

.method setLocationDeniedByUser(Z)V
    .locals 0
    .param p1, "locationDeniedByUser"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationDeniedByUser:Z

    .line 605
    return-void
.end method

.method setLocationInquiryAllowed(Z)V
    .locals 0
    .param p1, "locationInquiryAllowed"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationInquiryAllowed:Z

    .line 575
    return-void
.end method

.method declared-synchronized setLocationManager(Landroid/location/LocationManager;)V
    .locals 1
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationManager:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLocationMethodImplemented(Z)V
    .locals 0
    .param p1, "locationMethodImplemented"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->locationMethodImplemented:Z

    .line 590
    return-void
.end method

.method setLoctionEngineSwitchedON(Z)V
    .locals 0
    .param p1, "loctionEngineSwitchedON"    # Z

    .prologue
    .line 694
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->loctionEngineSwitchedON:Z

    .line 695
    return-void
.end method

.method setLon(D)V
    .locals 0
    .param p1, "lon"    # D

    .prologue
    .line 634
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->lon:D

    .line 635
    return-void
.end method

.method setNetworkType(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->networkType:Ljava/lang/String;

    .line 174
    return-void
.end method

.method setPhoneDefaultUserAgent(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 742
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 743
    .local v1, "wv":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 744
    .local v0, "ws":Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->phoneDefaultUserAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v0    # "ws":Landroid/webkit/WebSettings;
    .end local v1    # "wv":Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneDefaultUserAgent"    # Ljava/lang/String;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->phoneDefaultUserAgent:Ljava/lang/String;

    .line 1117
    return-void
.end method

.method setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->postalCode:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "refTagKey"    # Ljava/lang/String;

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagKey:Ljava/lang/String;

    .line 1105
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "refTagValue"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->refTagValue:Ljava/lang/String;

    .line 1113
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->requestParams:Ljava/util/Map;

    .line 296
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenDensity"    # Ljava/lang/String;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenDensity:Ljava/lang/String;

    .line 1145
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenSize"    # Ljava/lang/String;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->screenSize:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->searchString:Ljava/lang/String;

    .line 470
    return-void
.end method

.method setSiteId(Ljava/lang/String;)V
    .locals 0
    .param p1, "siteId"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->siteId:Ljava/lang/String;

    .line 372
    return-void
.end method

.method setTestMode(Z)V
    .locals 0
    .param p1, "testMode"    # Z

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->testMode:Z

    .line 710
    return-void
.end method

.method setTestModeAdActionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "testModeAdActionType"    # Ljava/lang/String;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->testModeAdActionType:Ljava/lang/String;

    .line 725
    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method setValidGeoInfo(Z)V
    .locals 0
    .param p1, "validGeoInfo"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->validGeoInfo:Z

    .line 665
    return-void
.end method

.method protected declared-synchronized switchOffLocUpdate()V
    .locals 1

    .prologue
    .line 834
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isLoctionEngineSwitchedON()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 836
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLoctionEngineSwitchedON(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    monitor-exit p0

    return-void

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized switchOnLocUpdate()V
    .locals 8

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    .line 799
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 802
    const-string v3, "location"

    .line 801
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 800
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 806
    .local v0, "locManager":Landroid/location/LocationManager;
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 808
    .local v7, "criteria":Landroid/location/Criteria;
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 809
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 808
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 816
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 817
    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isLoctionEngineSwitchedON()Z

    move-result v2

    if-nez v2, :cond_2

    .line 821
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 822
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    .line 823
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 827
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLoctionEngineSwitchedON(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v0    # "locManager":Landroid/location/LocationManager;
    .end local v7    # "criteria":Landroid/location/Criteria;
    :cond_2
    monitor-exit p0

    return-void

    .line 811
    .restart local v0    # "locManager":Landroid/location/LocationManager;
    .restart local v7    # "criteria":Landroid/location/Criteria;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 813
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 812
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 811
    if-eqz v2, :cond_1

    .line 814
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 798
    .end local v0    # "locManager":Landroid/location/LocationManager;
    .end local v1    # "provider":Ljava/lang/String;
    .end local v7    # "criteria":Landroid/location/Criteria;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized tryLastKnownLocation()V
    .locals 4

    .prologue
    .line 786
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationCoordinates()[D

    move-result-object v0

    .line 787
    .local v0, "loc":[D
    if-eqz v0, :cond_0

    .line 788
    new-instance v1, Landroid/location/Location;

    const-string v2, "last_known_loc"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, "newLocation":Landroid/location/Location;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 790
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 791
    const/4 v2, 0x2

    aget-wide v2, v0, v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 792
    const/4 v2, 0x3

    aget-wide v2, v0, v2

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 793
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->fillLocationInfo(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .end local v1    # "newLocation":Landroid/location/Location;
    :cond_0
    monitor-exit p0

    return-void

    .line 786
    .end local v0    # "loc":[D
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized updateInfo(Lcom/inmobi/androidsdk/InMobiAdDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/inmobi/androidsdk/InMobiAdDelegate;

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->fillDeviceInfo()V

    .line 754
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->siteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSiteId(Ljava/lang/String;)V

    .line 755
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->testMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setTestMode(Z)V

    .line 757
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->postalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPostalCode(Ljava/lang/String;)V

    .line 758
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->areaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAreaCode(Ljava/lang/String;)V

    .line 759
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->dateOfBirth()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDateOfBirth(Ljava/util/Date;)V

    .line 760
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->gender()Lcom/inmobi/androidsdk/GenderType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setGender(Lcom/inmobi/androidsdk/GenderType;)V

    .line 761
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->keywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setKeywords(Ljava/lang/String;)V

    .line 762
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->searchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSearchString(Ljava/lang/String;)V

    .line 763
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->income()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setIncome(I)V

    .line 764
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->education()Lcom/inmobi/androidsdk/EducationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setEducation(Lcom/inmobi/androidsdk/EducationType;)V

    .line 765
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->ethnicity()Lcom/inmobi/androidsdk/EthnicityType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setEthnicity(Lcom/inmobi/androidsdk/EthnicityType;)V

    .line 766
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->age()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAge(I)V

    .line 767
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->interests()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setInterests(Ljava/lang/String;)V

    .line 769
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->isLocationInquiryAllowed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationInquiryAllowed(Z)V

    .line 771
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isLocationInquiryAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->isPublisherProvidingLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    invoke-interface {p1}, Lcom/inmobi/androidsdk/InMobiAdDelegate;->currentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->fillLocationInfo(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 775
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->verifyLocationPermission()V

    .line 776
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isLocationDeniedByUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->switchOnLocUpdate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 781
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setLocationDeniedByUser(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
