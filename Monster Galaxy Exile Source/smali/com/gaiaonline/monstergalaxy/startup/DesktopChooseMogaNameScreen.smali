.class public Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;
.super Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaNameScreen;
.source "DesktopChooseMogaNameScreen.java"


# instance fields
.field textFieldAdded:Z

.field textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaNameScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected addMogaNameTextField(IIIILjava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxChars"    # Ljava/lang/Integer;
    .param p6, "disallowedChars"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldAdded:Z

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldAdded:Z

    .line 20
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;-><init>(F)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    .line 22
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 24
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    goto :goto_0
.end method

.method protected getMogaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected removeMogaNameTextField()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected setMogaName(Ljava/lang/String;)V
    .locals 1
    .param p1, "mogaName"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/DesktopChooseMogaNameScreen;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setText(Ljava/lang/String;)V

    .line 43
    return-void
.end method
