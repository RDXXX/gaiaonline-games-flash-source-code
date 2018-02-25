.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$4;
.super Ljava/lang/Object;
.source "MonsterGalaxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreenWhenPossible(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$4;->val$screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$4;->val$screenCode:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 535
    return-void
.end method
