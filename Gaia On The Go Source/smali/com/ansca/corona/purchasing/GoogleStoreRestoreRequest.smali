.class public Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;
.super Lcom/ansca/corona/purchasing/GoogleStoreRequest;
.source "GoogleStoreRestoreRequest.java"


# instance fields
.field private fNonce:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "nonce"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStoreRequest;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;->fNonce:J

    .line 22
    return-void
.end method


# virtual methods
.method public getNonce()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;->fNonce:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/ansca/corona/purchasing/GoogleStoreRestoreRequest;->fNonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    return-object v0
.end method
