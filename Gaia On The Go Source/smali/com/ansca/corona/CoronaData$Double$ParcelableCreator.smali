.class Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Double;
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
        "Lcom/ansca/corona/CoronaData$Double;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaData$1;

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Double;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 554
    new-instance v0, Lcom/ansca/corona/CoronaData$Double;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/CoronaData$Double;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Double;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Double;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 563
    new-array v0, p1, [Lcom/ansca/corona/CoronaData$Double;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Double;

    move-result-object v0

    return-object v0
.end method
