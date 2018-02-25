.class public final Lcom/millennialmedia/android/MMAdViewSDK;
.super Ljava/lang/Object;
.source "MMAdViewSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewSDK$Event;,
        Lcom/millennialmedia/android/MMAdViewSDK$Log;
    }
.end annotation


# static fields
.field static final BASEURL:Ljava/lang/String; = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

.field static final BASE_PATH:Ljava/lang/String; = "getAd.php5?"

.field static final CACHE_REQUEST_TIMEOUT:I = 0x7530

.field static final CLOSE_ACTIVITY_DURATION:I = 0x190

.field static COMMA:Ljava/lang/String; = null

.field public static final DEFAULT_APID:Ljava/lang/String; = "28911"

.field public static final DEFAULT_VIEWID:I = 0x711e41a1

.field static final EMPTY:Ljava/lang/String; = ""

.field static final ERR_BROKENREF:Ljava/lang/String; = "The reference to the ad view was broken."

.field static final ERR_NOACTIVITY:Ljava/lang/String; = "The ad view does not have a parent activity."

.field static final ERR_NOT_MAIN_THREAD:Ljava/lang/String; = "Only the main thread can access an MMAdView."

.field static final HTTPS:Ljava/lang/String; = "https"

.field static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss ZZZZ"

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_NORMAL:I = 0x0

.field public static final LOG_LEVEL_PRIVATE:I = 0x3

.field public static final LOG_LEVEL_PRIVATE_VERBOSE:I = 0x4

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field static final LOG_REQUEST_TIMEOUT:I = 0x2710

.field static final MIN_REFRESH:I = 0xf

.field static final OPEN_ACTIVITY_DURATION:I = 0x258

.field static final PREFS_NAME:Ljava/lang/String; = "MillennialMediaSettings"

.field static final PRIVATE_CACHE_DIR:Ljava/lang/String; = ".mmsyscache"

.field static final REQUEST_TIMEOUT:I = 0xbb8

.field public static final SDKLOG:Ljava/lang/String; = "MillennialMediaSDK"

.field public static final SDKVER:Ljava/lang/String; = "4.6.0-12.07.16.a"

.field public static broadcastEvents:Z

.field public static debugMode:Z

.field static demographic:Lcom/millennialmedia/android/MMDemographic;

.field static disableAdMinRefresh:Z

.field private static getAuidOrHdidValue:Ljava/lang/String;

.field private static getAuidValue:Ljava/lang/String;

.field private static getHdidValue:Ljava/lang/String;

.field private static getMMdidValue:Ljava/lang/String;

.field public static location:Landroid/location/Location;

.field public static logLevel:I

.field static macId:Ljava/lang/String;

.field static mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/MMAdViewSDK;->disableAdMinRefresh:Z

    .line 85
    new-instance v0, Lcom/millennialmedia/android/MMDemographic;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMDemographic;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    .line 97
    const-string v0, ","

    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->COMMA:Ljava/lang/String;

    .line 605
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->mainHandler:Landroid/os/Handler;

    .line 712
    sput-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;

    .line 754
    sput-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    .line 796
    sput-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    .line 835
    sput-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 792
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 763
    .local v0, "auid":Ljava/lang/String;
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 764
    sget-object v3, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    .line 785
    :goto_0
    return-object v3

    .line 767
    :cond_0
    const-string v0, "android_idandroid_id"

    .line 768
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 769
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 773
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 779
    :goto_1
    const/4 v2, 0x0

    .line 781
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz p0, :cond_3

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 784
    :cond_4
    const/4 v0, 0x0

    .line 785
    :cond_5
    sput-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidValue:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method static getAuidOrHdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 839
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 841
    .local v0, "hdid":Z
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 843
    if-eqz v0, :cond_0

    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    const-string v2, "mmh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    .line 852
    :goto_0
    return-object v1

    .line 845
    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    const-string v2, "mmh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 846
    sget-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 849
    :cond_1
    if-eqz v0, :cond_2

    .line 850
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 852
    :cond_2
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdidValue:Ljava/lang/String;

    goto :goto_0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 635
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 636
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 637
    const-string v0, "unknown"

    .line 709
    :goto_0
    return-object v0

    .line 639
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 641
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 642
    .local v3, "type":I
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 644
    .local v2, "subType":I
    if-ne v3, v5, :cond_1

    .line 645
    const-string v0, "wifi"

    .local v0, "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 646
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 648
    packed-switch v2, :pswitch_data_0

    .line 696
    const-string v0, "unknown"

    .line 697
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 651
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "1xrtt"

    .line 652
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 654
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "cdma"

    .line 655
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 657
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "edge"

    .line 658
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 660
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "ehrpd"

    .line 661
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 663
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "evdo_0"

    .line 664
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 666
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "evdo_a"

    .line 667
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 669
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "evdo_b"

    .line 670
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "gprs"

    .line 673
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 675
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "hsdpa"

    .line 676
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 678
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "hspa"

    .line 679
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 681
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "hspap"

    .line 682
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 684
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "hsupa"

    .line 685
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 687
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "iden"

    .line 688
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 690
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "lte"

    .line 691
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 693
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "umts"

    .line 694
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 702
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 707
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v2    # "subType":I
    .end local v3    # "type":I
    :cond_3
    const-string v0, "offline"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method static getDpi(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 864
    const/16 v0, 0xa0

    return v0
.end method

.method static getHdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 807
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 808
    sget-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    .line 832
    :cond_0
    :goto_0
    return-object v5

    .line 810
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "auid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 815
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mmh_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .local v3, "hdid":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 819
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 820
    .local v2, "hashBytes":[B
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 824
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 825
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getHdidValue:Ljava/lang/String;

    goto :goto_0

    .line 827
    .end local v2    # "hashBytes":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized getMMdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 721
    const-class v6, Lcom/millennialmedia/android/MMAdViewSDK;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 722
    sget-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 724
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "mmdid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "mmh_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    .local v4, "mmdidBuilder":Ljava/lang/StringBuilder;
    :try_start_2
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 733
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 734
    .local v1, "hashBytes":[B
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 738
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 739
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 721
    .end local v1    # "hashBytes":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "mmdid":Ljava/lang/String;
    .end local v4    # "mmdidBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 741
    .restart local v3    # "mmdid":Ljava/lang/String;
    .restart local v4    # "mmdidBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static hasAccelerometer(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 869
    if-nez p0, :cond_0

    .line 870
    const-string v5, "false"

    .line 877
    :goto_0
    return-object v5

    .line 871
    :cond_0
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 872
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    .line 873
    .local v4, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 874
    .local v1, "hasAccelerometer":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 875
    .local v0, "aSensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 876
    const/4 v1, 0x1

    goto :goto_1

    .line 877
    .end local v0    # "aSensor":Landroid/hardware/Sensor;
    :cond_2
    if-eqz v1, :cond_3

    const-string v5, "true"

    goto :goto_0

    :cond_3
    const-string v5, "false"

    goto :goto_0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 623
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 624
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 626
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static isUiThread()Z
    .locals 2

    .prologue
    .line 617
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetCache(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->resetCache(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 609
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 610
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static declared-synchronized setMMdid(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 751
    const-class v0, Lcom/millennialmedia/android/MMAdViewSDK;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdidValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    monitor-exit v0

    return-void

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
