.class Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;
.super Ljava/lang/Object;
.source "BattleReportScreen.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

.field private final synthetic val$aImage1:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

.field private final synthetic val$aImage1x:F

.field private final synthetic val$mogaIndex:F

.field private final synthetic val$newCompletion:I

.field private final synthetic val$newLevel:I

.field private final synthetic val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;Lcom/gaiaonline/monstergalaxy/battle/LevelBar;IILcom/badlogic/gdx/scenes/scene2d/actors/Label;FF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$aImage1:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    iput p3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$newCompletion:I

    iput p4, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$newLevel:I

    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    iput p6, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$mogaIndex:F

    iput p7, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$aImage1x:F

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$aImage1:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    const/4 v1, 0x0

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$newCompletion:I

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$newLevel:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->restartAction(III)V

    .line 265
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 266
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    .line 267
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$newLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$mogaIndex:F

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;F)V

    .line 271
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$aImage1x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;->val$textLevel:Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    .line 272
    return-void
.end method
