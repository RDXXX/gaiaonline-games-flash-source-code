.class interface abstract Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;
.super Ljava/lang/Object;
.source "GoogleStoreConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/purchasing/GoogleStoreConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IMarketBillingService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
