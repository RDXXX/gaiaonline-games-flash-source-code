.class public Lcom/ansca/corona/CoronaData$String;
.super Lcom/ansca/corona/CoronaData$Value;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "String"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$String$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/ansca/corona/CoronaData$String;


# instance fields
.field private fValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 578
    new-instance v0, Lcom/ansca/corona/CoronaData$String;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$String;->EMPTY:Lcom/ansca/corona/CoronaData$String;

    .line 581
    new-instance v0, Lcom/ansca/corona/CoronaData$String$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$String$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$String;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Value;-><init>()V

    .line 588
    if-nez p1, :cond_0

    .line 589
    const-string p1, ""

    .line 591
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    .line 592
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$String;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x1

    return v0
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
    .line 628
    const-string v0, ""

    const-string v1, "string"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    const-string v0, ""

    const-string v1, "string"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$String;->fValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    return-void
.end method
