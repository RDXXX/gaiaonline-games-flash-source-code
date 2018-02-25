.class public Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;
.super Lcom/ansca/corona/purchasing/GoogleStoreRequest;
.source "GoogleStorePurchaseRequest.java"


# instance fields
.field private fProductName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ansca/corona/purchasing/GoogleStoreRequest;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;->fProductName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;->fProductName:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    const-string v2, "REQUEST_PURCHASE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/ansca/corona/purchasing/GoogleStorePurchaseRequest;->fProductName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method
