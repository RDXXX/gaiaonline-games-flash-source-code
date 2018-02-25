.class public Lcom/ansca/corona/CoronaData$Boolean;
.super Lcom/ansca/corona/CoronaData$Value;
.source "CoronaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Boolean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FALSE:Lcom/ansca/corona/CoronaData$Boolean;

.field public static final TRUE:Lcom/ansca/corona/CoronaData$Boolean;


# instance fields
.field private fValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean;-><init>(Z)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->TRUE:Lcom/ansca/corona/CoronaData$Boolean;

    .line 363
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean;-><init>(Z)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->FALSE:Lcom/ansca/corona/CoronaData$Boolean;

    .line 366
    new-instance v0, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Boolean$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Boolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData$Value;-><init>()V

    .line 373
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    .line 374
    return-void
.end method

.method public static from(Z)Lcom/ansca/corona/CoronaData$Boolean;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 443
    if-eqz p0, :cond_0

    sget-object v0, Lcom/ansca/corona/CoronaData$Boolean;->TRUE:Lcom/ansca/corona/CoronaData$Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaData$Boolean;->FALSE:Lcom/ansca/corona/CoronaData$Boolean;

    goto :goto_0
.end method


# virtual methods
.method public equals(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    return v0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 1
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "xmlWriter"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    const-string v0, ""

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const-string v0, ""

    const-string v1, "value"

    iget-boolean v2, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string v0, ""

    const-string v1, "boolean"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaData$Boolean;->fValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 432
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
