.class Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;
.super Ljava/lang/Object;
.source "CoronaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData$Table;
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
        "Lcom/ansca/corona/CoronaData$Table;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/CoronaData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/CoronaData$1;

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Table;
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1316
    new-instance v4, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v4}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1317
    .local v4, "table":Lcom/ansca/corona/CoronaData$Table;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1318
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1319
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1320
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData$Value;

    .line 1321
    .local v3, "key":Lcom/ansca/corona/CoronaData$Value;
    const/4 v5, 0x0

    .line 1322
    .local v5, "value":Lcom/ansca/corona/CoronaData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    .line 1323
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "value":Lcom/ansca/corona/CoronaData;
    check-cast v5, Lcom/ansca/corona/CoronaData;

    .line 1325
    .restart local v5    # "value":Lcom/ansca/corona/CoronaData;
    :cond_0
    invoke-virtual {v4, v3, v5}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    .line 1319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    .end local v3    # "key":Lcom/ansca/corona/CoronaData$Value;
    .end local v5    # "value":Lcom/ansca/corona/CoronaData;
    :cond_1
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ansca/corona/CoronaData$Table;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1336
    new-array v0, p1, [Lcom/ansca/corona/CoronaData$Table;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1309
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;->newArray(I)[Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method
