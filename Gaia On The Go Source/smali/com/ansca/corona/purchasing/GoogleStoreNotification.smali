.class public Lcom/ansca/corona/purchasing/GoogleStoreNotification;
.super Ljava/lang/Object;
.source "GoogleStoreNotification.java"


# instance fields
.field protected fNotificationStringId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->fNotificationStringId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static forId(Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    .locals 2
    .param p0, "notificationStringId"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreNotification;

    invoke-direct {v0}, Lcom/ansca/corona/purchasing/GoogleStoreNotification;-><init>()V

    .line 41
    .local v0, "notification":Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    iput-object p0, v0, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->fNotificationStringId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static from(Landroid/content/Intent;)Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 61
    .local v1, "notification":Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    :try_start_0
    const-string v2, "notification_id"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->forId(Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStoreNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNotificationStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreNotification;->fNotificationStringId:Ljava/lang/String;

    return-object v0
.end method
