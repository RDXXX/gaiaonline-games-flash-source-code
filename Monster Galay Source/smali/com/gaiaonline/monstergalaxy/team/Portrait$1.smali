.class Lcom/gaiaonline/monstergalaxy/team/Portrait$1;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/team/Portrait;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$1;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "releasePoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 115
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/Portrait$1;->this$0:Lcom/gaiaonline/monstergalaxy/team/Portrait;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/team/Portrait;->access$0(Lcom/gaiaonline/monstergalaxy/team/Portrait;)V

    .line 120
    :cond_0
    return-void
.end method
