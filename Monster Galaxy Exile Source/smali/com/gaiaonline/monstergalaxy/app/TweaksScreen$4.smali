.class Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$4;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$4;->val$activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$4;->val$activity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->removeDialog(I)V

    .line 72
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->access$1()V

    .line 73
    return-void
.end method
