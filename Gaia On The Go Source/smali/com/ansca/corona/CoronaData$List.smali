.class public Lcom/ansca/corona/CoronaData$List;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$List$ParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ansca/corona/CoronaData;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/ansca/corona/CoronaData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$List;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 792
    new-instance v0, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$List$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$List;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    .line 797
    return-void
.end method

.method public static from(Lorg/json/JSONArray;)Lcom/ansca/corona/CoronaData$List;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 938
    if-nez p0, :cond_1

    .line 939
    const/4 v1, 0x0

    .line 947
    :cond_0
    return-object v1

    .line 943
    :cond_1
    new-instance v1, Lcom/ansca/corona/CoronaData$List;

    invoke-direct {v1}, Lcom/ansca/corona/CoronaData$List;-><init>()V

    .line 944
    .local v1, "list":Lcom/ansca/corona/CoronaData$List;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 945
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/ansca/corona/CoronaData;)V
    .locals 1
    .param p1, "item"    # Lcom/ansca/corona/CoronaData;

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 847
    return-void
.end method

.method public clone()Lcom/ansca/corona/CoronaData$List;
    .locals 4

    .prologue
    .line 805
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$List;

    .line 806
    .local v0, "clone":Lcom/ansca/corona/CoronaData$List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    .line 807
    iget-object v3, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaData;

    .line 808
    .local v1, "data":Lcom/ansca/corona/CoronaData;
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaData$List;->add(Lcom/ansca/corona/CoronaData;)V

    goto :goto_0

    .line 810
    .end local v1    # "data":Lcom/ansca/corona/CoronaData;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$List;->clone()Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$List;->clone()Lcom/ansca/corona/CoronaData$List;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 7
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v6, 0x1

    .line 876
    iget-object v5, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 877
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 878
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 894
    :cond_0
    return v6

    .line 883
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 884
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v3

    .line 885
    .local v3, "luaTableStackIndex":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 886
    iget-object v5, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaData;

    .line 887
    .local v1, "data":Lcom/ansca/corona/CoronaData;
    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {v1, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    move-result v4

    .line 889
    .local v4, "wasPushed":Z
    if-eqz v4, :cond_2

    .line 890
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v3, v5}, Lcom/naef/jnlua/LuaState;->rawSet(II)V

    .line 885
    .end local v4    # "wasPushed":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/ansca/corona/CoronaData;)Z
    .locals 1
    .param p1, "item"    # Lcom/ansca/corona/CoronaData;

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    const/4 v0, 0x0

    .line 841
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "xmlWriter"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    const-string v2, ""

    const-string v3, "list"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;

    .line 905
    .local v0, "data":Lcom/ansca/corona/CoronaData;
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    .line 909
    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    :cond_1
    const-string v2, ""

    const-string v3, "list"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 919
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v2, p0, Lcom/ansca/corona/CoronaData$List;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;

    .line 921
    .local v0, "data":Lcom/ansca/corona/CoronaData;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 925
    .end local v0    # "data":Lcom/ansca/corona/CoronaData;
    :cond_1
    return-void
.end method
