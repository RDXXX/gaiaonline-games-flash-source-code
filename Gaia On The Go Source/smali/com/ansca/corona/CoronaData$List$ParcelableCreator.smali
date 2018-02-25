.class Lcom/ansca/corona/CoronaData$List$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$List;
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
        "Lcom/ansca/corona/CoronaData$List;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaData$1;

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$List;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 958
    new-instance v3, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v3}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 959
    .local v3, "list":Lcom/ansca/corona/CoronaData$List;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 960
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 961
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 962
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$List;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 973
    new-array v0, p1, [Lcom/ansca/corona/CoronaData$List;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method
