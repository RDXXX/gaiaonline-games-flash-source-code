.class public Lcom/gaiaonline/monstergalaxy/screen/ClockElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.source "ClockElement.java"


# static fields
.field private static instance:Lcom/gaiaonline/monstergalaxy/screen/ClockElement;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private position:Lcom/badlogic/gdx/math/Vector2;

.field private position00:Lcom/badlogic/gdx/math/Vector2;

.field private testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->calendar:Ljava/util/Calendar;

    .line 16
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 17
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->position00:Lcom/badlogic/gdx/math/Vector2;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/gaiaonline/monstergalaxy/screen/ClockElement;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->instance:Lcom/gaiaonline/monstergalaxy/screen/ClockElement;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->instance:Lcom/gaiaonline/monstergalaxy/screen/ClockElement;

    .line 25
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->instance:Lcom/gaiaonline/monstergalaxy/screen/ClockElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected dispose()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->position00:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 35
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "--:--:--"

    const v2, 0x3f19999a    # 0.6f

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    if-eqz v0, :cond_2

    .line 45
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->calendar:Ljava/util/Calendar;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->getCurrentTimeSec()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Clock;->isTimeTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Trusted "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setText(Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->testElement:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ClockElement;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 52
    :cond_2
    return-void

    .line 47
    :cond_3
    const-string v0, "Untrusted "

    goto :goto_0
.end method
