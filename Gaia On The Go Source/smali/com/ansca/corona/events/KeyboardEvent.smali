.class public Lcom/ansca/corona/events/KeyboardEvent;
.super Lcom/ansca/corona/events/Event;
.source "KeyboardEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;,
        Lcom/ansca/corona/events/KeyboardEvent$Phase;
    }
.end annotation


# instance fields
.field private fKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ansca/corona/events/KeyboardEvent;->fKeyEvent:Landroid/view/KeyEvent;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/events/KeyboardEvent;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/events/KeyboardEvent;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ansca/corona/events/KeyboardEvent;->fKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public static getStringForKeyCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "keyName":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 113
    :goto_0
    return-object v0

    .line 79
    :sswitch_0
    const-string v0, "back"

    .line 80
    goto :goto_0

    .line 82
    :sswitch_1
    const-string v0, "menu"

    .line 83
    goto :goto_0

    .line 85
    :sswitch_2
    const-string v0, "search"

    .line 86
    goto :goto_0

    .line 88
    :sswitch_3
    const-string v0, "center"

    .line 89
    goto :goto_0

    .line 91
    :sswitch_4
    const-string v0, "down"

    .line 92
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v0, "left"

    .line 95
    goto :goto_0

    .line 97
    :sswitch_6
    const-string v0, "right"

    .line 98
    goto :goto_0

    .line 100
    :sswitch_7
    const-string v0, "up"

    .line 101
    goto :goto_0

    .line 103
    :sswitch_8
    const-string v0, "volumeUp"

    .line 104
    goto :goto_0

    .line 106
    :sswitch_9
    const-string v0, "volumeDown"

    .line 107
    goto :goto_0

    .line 109
    :sswitch_a
    const-string v0, "camera"

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_7
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_3
        0x18 -> :sswitch_8
        0x19 -> :sswitch_9
        0x1b -> :sswitch_a
        0x52 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public Send()V
    .locals 6

    .prologue
    .line 27
    iget-object v4, p0, Lcom/ansca/corona/events/KeyboardEvent;->fKeyEvent:Landroid/view/KeyEvent;

    if-nez v4, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 33
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "wasKeyOverridden":Z
    iget-object v4, p0, Lcom/ansca/corona/events/KeyboardEvent;->fKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    sget-object v2, Lcom/ansca/corona/events/KeyboardEvent$Phase;->UP:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    .line 40
    .local v2, "phase":Lcom/ansca/corona/events/KeyboardEvent$Phase;
    :goto_1
    iget-object v4, p0, Lcom/ansca/corona/events/KeyboardEvent;->fKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Lcom/ansca/corona/events/KeyboardEvent;->getStringForKeyCode(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "keyName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 42
    invoke-virtual {v2}, Lcom/ansca/corona/events/KeyboardEvent$Phase;->getValue()I

    move-result v4

    invoke-static {v4, v1}, Lcom/ansca/corona/JavaToNativeShim;->keyEvent(ILjava/lang/String;)Z

    move-result v3

    .line 46
    :cond_2
    if-nez v3, :cond_0

    .line 47
    new-instance v4, Lcom/ansca/corona/events/KeyboardEvent$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/events/KeyboardEvent$1;-><init>(Lcom/ansca/corona/events/KeyboardEvent;)V

    invoke-virtual {v0, v4}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 39
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "phase":Lcom/ansca/corona/events/KeyboardEvent$Phase;
    :cond_3
    sget-object v2, Lcom/ansca/corona/events/KeyboardEvent$Phase;->DOWN:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    goto :goto_1
.end method
