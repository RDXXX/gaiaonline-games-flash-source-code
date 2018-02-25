.class Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$1;
.super Ljava/lang/Object;
.source "ZodiacIntro.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;->access$1(Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro;)V

    .line 144
    return-void
.end method
