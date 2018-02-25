.class Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "LevelBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressTo"
.end annotation


# instance fields
.field accTime:F

.field currentPercent:F

.field finalPercent:I

.field initialPercent:I

.field protected theBar:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

.field final totalTime:F


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;II)V
    .locals 1
    .param p2, "initialPercent"    # I
    .param p3, "finalPercent"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->this$0:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    .line 133
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->totalTime:F

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->accTime:F

    .line 137
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->initialPercent:I

    .line 138
    int-to-float v0, p2

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->currentPercent:F

    .line 139
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->finalPercent:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->done:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->done:Z

    if-nez v0, :cond_1

    .line 159
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->accTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->accTime:F

    .line 160
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->initialPercent:I

    int-to-float v0, v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->finalPercent:I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->initialPercent:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->accTime:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->currentPercent:F

    .line 162
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->currentPercent:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->finalPercent:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->done:Z

    .line 164
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->done:Z

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->finalPercent:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->currentPercent:F

    .line 166
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->this$0:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->maxLevel:I

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->this$0:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->actualLevel:I

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->this$0:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->showMaxLevel()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->theBar:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->access$0(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;)Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->currentPercent:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->setProgress(F)V

    .line 173
    :cond_1
    return-void

    .line 162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->done:Z

    return v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 147
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->theBar:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    .line 148
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->theBar:Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->access$0(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;)Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    move-result-object v0

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->initialPercent:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->setProgress(F)V

    .line 149
    return-void
.end method
