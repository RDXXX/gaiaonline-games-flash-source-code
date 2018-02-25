.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;
.super Ljava/lang/Object;
.source "MonsterGalaxyAndroid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;->this$0:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 174
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;

    invoke-direct {v0, p0, p2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;I)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method
