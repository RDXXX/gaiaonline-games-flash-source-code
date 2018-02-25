.class public Lcom/ansca/corona/CoronaData$Double;
.super Lcom/ansca/corona/CoronaData$Value;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Double$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Double;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Value;-><init>()V

    .line 485
    iput-wide p1, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    .line 486
    return-void
.end method


# virtual methods
.method public equals(D)Z
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    return-wide v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 2
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 522
    const/4 v0, 0x1

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
    .line 531
    const-string v0, ""

    const-string v1, "double"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    const-string v0, ""

    const-string v1, "value"

    iget-wide v2, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    const-string v0, ""

    const-string v1, "double"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 543
    iget-wide v0, p0, Lcom/ansca/corona/CoronaData$Double;->fValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 544
    return-void
.end method
