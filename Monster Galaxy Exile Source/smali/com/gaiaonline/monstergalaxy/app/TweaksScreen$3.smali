.class Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$3;
.super Ljava/lang/Object;
.source "TweaksScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->show(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$3;->val$activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$3;->val$activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->showDialog(I)V

    .line 64
    return-void
.end method
