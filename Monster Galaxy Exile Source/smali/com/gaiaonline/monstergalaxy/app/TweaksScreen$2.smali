.class Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 56
    return-void
.end method
