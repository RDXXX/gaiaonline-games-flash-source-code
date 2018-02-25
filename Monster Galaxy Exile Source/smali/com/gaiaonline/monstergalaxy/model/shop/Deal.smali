.class public Lcom/gaiaonline/monstergalaxy/model/shop/Deal;
.super Ljava/lang/Object;
.source "Deal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;
    }
.end annotation


# instance fields
.field private buttonTitle:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconAssetName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "buttonTitle"    # Ljava/lang/String;
    .param p5, "iconAssetName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->type:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    .line 12
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->title:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->description:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->buttonTitle:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->iconAssetName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->buttonTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->iconAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->type:Lcom/gaiaonline/monstergalaxy/model/shop/Deal$DealType;

    return-object v0
.end method

.method public setButtonTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonTitle"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->buttonTitle:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->description:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setIconAssetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconAssetName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->iconAssetName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/Deal;->title:Ljava/lang/String;

    .line 28
    return-void
.end method
