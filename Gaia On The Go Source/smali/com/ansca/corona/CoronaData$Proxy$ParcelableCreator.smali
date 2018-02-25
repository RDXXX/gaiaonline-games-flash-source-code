.class Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ansca/corona/CoronaData$Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaData$1;

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Proxy;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 768
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaData$Proxy;-><init>()V

    .line 769
    .local v0, "proxy":Lcom/ansca/corona/CoronaData$Proxy;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaData$Proxy;->setData(Lcom/ansca/corona/CoronaData;)V

    .line 772
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Proxy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 781
    new-array v0, p1, [Lcom/ansca/corona/CoronaData$Proxy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object v0

    return-object v0
.end method
