.class Lcom/inmobi/androidsdk/impl/ClickProcessingTask;
.super Landroid/os/AsyncTask;
.source "ClickProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final encoding:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private final adunit:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private final appCtx:Landroid/content/Context;

.field private final uInfo:Lcom/inmobi/androidsdk/impl/UserInfo;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/impl/InMobiAdView;Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .param p2, "adunit"    # Lcom/inmobi/androidsdk/impl/AdUnit;
    .param p3, "uInfo"    # Lcom/inmobi/androidsdk/impl/UserInfo;
    .param p4, "appCtx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 31
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adunit:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 32
    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->uInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 33
    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->appCtx:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private finishAdClick(Ljava/lang/String;)V
    .locals 12
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 67
    if-eqz p1, :cond_2

    .line 69
    move-object v7, p1

    .line 70
    .local v7, "urlText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 71
    .local v4, "extraData":Ljava/lang/String;
    :try_start_0
    const-string v0, "android.intent.action.VIEW"

    .line 72
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v8}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getCurrentAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    .line 74
    .local v1, "ad":Lcom/inmobi/androidsdk/impl/AdUnit;
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v8

    sget-object v9, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    if-ne v8, v9, :cond_0

    .line 75
    const-string v0, "android.intent.action.SENDTO"

    .line 76
    const-string v8, "&Body="

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "index":I
    if-lez v5, :cond_0

    .line 79
    const-string v8, "&Body="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 84
    .end local v5    # "index":I
    :cond_0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 85
    .local v6, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v2, "adActionIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v8

    sget-object v9, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    if-ne v8, v9, :cond_1

    .line 90
    const-string v8, "compose_mode"

    .line 91
    const/4 v9, 0x1

    .line 90
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    if-eqz v4, :cond_1

    .line 93
    const-string v8, "sms_body"

    .line 94
    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_1
    iget-object v8, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->appCtx:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "ad":Lcom/inmobi/androidsdk/impl/AdUnit;
    .end local v2    # "adActionIntent":Landroid/content/Intent;
    .end local v4    # "extraData":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "urlText":Ljava/lang/String;
    :cond_2
    invoke-static {v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 109
    iget-object v8, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v8, v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    .line 111
    :goto_0
    return-void

    .line 100
    .restart local v4    # "extraData":Ljava/lang/String;
    .restart local v7    # "urlText":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "exception":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v8, "InmobiAndroidSDK2.3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Operation could not be performed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 109
    iget-object v8, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v8, v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    goto :goto_0

    .line 104
    .end local v3    # "exception":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "InmobiAndroidSDK2.3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error executing post click actions on URL : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 109
    iget-object v8, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v8, v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    goto :goto_0

    .line 107
    .end local v3    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 108
    invoke-static {v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 109
    iget-object v9, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v9, v11}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    .line 110
    throw v8
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 38
    const/4 v4, 0x0

    .line 40
    .local v4, "targetRedirectUrl":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->appCtx:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 41
    .local v3, "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "arrayData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "x-mkhoj-adactiontype"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adunit:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionType()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adunit:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/impl/AdUnit;->getTargetUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->uInfo:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v3, v5, v6, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->getNewAdActionType()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "newAdActionType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 47
    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adunit:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdActionType(Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "arrayData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "newAdActionType":Ljava/lang/String;
    .end local v3    # "requestResponseManager":Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    :cond_0
    :goto_0
    return-object v4

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "exception":Ljava/lang/Exception;
    const-string v5, "InmobiAndroidSDK2.3"

    const-string v6, "Encountered generic exception initiating click"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetRedirectUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->finishAdClick(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setAdRedirectionInProgress(Z)V

    .line 61
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/ClickProcessingTask;->adView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setProcessingAdClick(Z)V

    goto :goto_0
.end method
