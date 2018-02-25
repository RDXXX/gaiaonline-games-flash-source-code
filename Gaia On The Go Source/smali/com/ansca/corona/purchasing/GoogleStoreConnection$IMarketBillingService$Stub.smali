.class public abstract Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub;
.super Landroid/os/Binder;
.source "GoogleStoreConnection.java"

# interfaces
.implements Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IMarketBillingService"

.field static final TRANSACTION_sendBillingRequest:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 369
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p0, p0, v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 389
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string v1, "com.android.vending.billing.IMarketBillingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 386
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    if-eqz v1, :cond_1

    .line 387
    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService;

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 397
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 407
    sparse-switch p1, :sswitch_data_0

    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 409
    :sswitch_0
    const-string v3, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :sswitch_1
    const-string v3, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 418
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/purchasing/GoogleStoreConnection$IMarketBillingService$Stub;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 419
    .local v1, "result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 425
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
