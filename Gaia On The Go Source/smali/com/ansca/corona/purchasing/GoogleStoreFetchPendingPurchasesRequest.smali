.class public Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;
.super Lcom/ansca/corona/purchasing/GoogleStoreRequest;
.source "GoogleStoreFetchPendingPurchasesRequest.java"


# instance fields
.field private fNonce:J

.field private fNotificationStringIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/Collection;)V
    .locals 1
    .param p1, "nonce"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "notificationStringIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStoreRequest;-><init>()V

    .line 27
    if-nez p3, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 36
    :cond_1
    iput-wide p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNonce:J

    .line 37
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNotificationStringIds:Ljava/util/Collection;

    .line 38
    return-void
.end method


# virtual methods
.method public getNonce()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNonce:J

    return-wide v0
.end method

.method public getNotificationStringIds()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNotificationStringIds:Ljava/util/Collection;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    const-string v2, "NOTIFY_IDS"

    iget-object v1, p0, Lcom/ansca/corona/purchasing/GoogleStoreFetchPendingPurchasesRequest;->fNotificationStringIds:Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    return-object v0
.end method
