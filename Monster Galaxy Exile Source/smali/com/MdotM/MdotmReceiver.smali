.class public Lcom/MdotM/MdotmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdotmReceiver.java"


# instance fields
.field public androidId:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field private makePostBack:Ljava/lang/Thread;

.field public postBackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/MdotM/MdotmReceiver;->postBackUrl:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/MdotM/MdotmReceiver;->deviceId:Ljava/lang/String;

    .line 18
    const-string v0, "0"

    iput-object v0, p0, Lcom/MdotM/MdotmReceiver;->androidId:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/MdotM/MdotmReceiver$1;

    invoke-direct {v0, p0}, Lcom/MdotM/MdotmReceiver$1;-><init>(Lcom/MdotM/MdotmReceiver;)V

    iput-object v0, p0, Lcom/MdotM/MdotmReceiver;->makePostBack:Ljava/lang/Thread;

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v3, ""

    .line 24
    .local v3, "referrer":Ljava/lang/String;
    :try_start_0
    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    const-string v3, "null_referrer_found"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    :try_start_1
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 33
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 35
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/MdotM/MdotmReceiver;->deviceId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 42
    const-string v6, "android_id"

    .line 41
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/MdotM/MdotmReceiver;->androidId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    :goto_2
    const-string v1, ""

    .line 47
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    .line 48
    .local v2, "packageObj":Ljava/lang/Package;
    if-nez v2, :cond_1

    .line 49
    const-string v1, "null_package"

    .line 54
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://ads.mdotm.com/ads/receiver.php?referrer="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 56
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&deviceid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 57
    iget-object v6, p0, Lcom/MdotM/MdotmReceiver;->deviceId:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&androidid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/MdotM/MdotmReceiver;->androidId:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    iput-object v5, p0, Lcom/MdotM/MdotmReceiver;->postBackUrl:Ljava/lang/String;

    .line 59
    iget-object v5, p0, Lcom/MdotM/MdotmReceiver;->makePostBack:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 60
    return-void

    .line 28
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageObj":Ljava/lang/Package;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "exception_found_retrieving_referrer"

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "0"

    iput-object v5, p0, Lcom/MdotM/MdotmReceiver;->deviceId:Ljava/lang/String;

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "0"

    iput-object v5, p0, Lcom/MdotM/MdotmReceiver;->androidId:Ljava/lang/String;

    goto :goto_2

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageObj":Ljava/lang/Package;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
