.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;
.super Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;
.source "DesktopNameMogaDialog.java"


# instance fields
.field private textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;


# direct methods
.method protected constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 0
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "moga"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 14
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
    .line 29
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;-><init>(F)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    .line 31
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 34
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 37
    return-void
.end method

.method protected getMogaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setMogaName(Ljava/lang/String;)V
    .locals 1
    .param p1, "mogaName"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/DesktopNameMogaDialog;->textFieldElement:Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setText(Ljava/lang/String;)V

    .line 24
    return-void
.end method
