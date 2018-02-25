.class Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;
.super Ljava/lang/Object;
.source "ChooseMogaScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->addMoga(ILcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

.field private final synthetic val$mogaType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;->val$mogaType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$1;->val$mogaType:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->access$2(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V

    .line 63
    return-void
.end method
