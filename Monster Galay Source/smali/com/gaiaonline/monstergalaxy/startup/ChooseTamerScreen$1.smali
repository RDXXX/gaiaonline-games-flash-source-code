.class Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;
.super Ljava/lang/Object;
.source "ChooseTamerScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->addTamer(Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;

.field private final synthetic val$gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;->val$gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen$1;->val$gender:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;->access$0(Lcom/gaiaonline/monstergalaxy/startup/ChooseTamerScreen;Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;)V

    .line 36
    return-void
.end method
