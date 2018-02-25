.class public Lcom/ansca/corona/CoronaData$Proxy;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fData:Lcom/ansca/corona/CoronaData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 679
    new-instance v0, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Proxy$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Proxy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ansca/corona/CoronaData$Proxy;-><init>(Lcom/ansca/corona/CoronaData;)V

    .line 684
    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/CoronaData;)V
    .locals 0
    .param p1, "data"    # Lcom/ansca/corona/CoronaData;

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 691
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    .line 692
    return-void
.end method


# virtual methods
.method public clone()Lcom/ansca/corona/CoronaData$Proxy;
    .locals 1

    .prologue
    .line 720
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$Proxy;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Proxy;->clone()Lcom/ansca/corona/CoronaData$Proxy;

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
    .line 674
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Proxy;->clone()Lcom/ansca/corona/CoronaData$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/ansca/corona/CoronaData;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    move-result v0

    goto :goto_0
.end method

.method public setData(Lcom/ansca/corona/CoronaData;)V
    .locals 0
    .param p1, "data"    # Lcom/ansca/corona/CoronaData;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    .line 710
    return-void
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "xmlWriter"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    const-string v0, ""

    const-string v1, "proxy"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 741
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 744
    :cond_0
    const-string v0, ""

    const-string v1, "proxy"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 755
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Proxy;->fData:Lcom/ansca/corona/CoronaData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 758
    :cond_0
    return-void

    .line 754
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
