.class Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTrigger"
.end annotation


# instance fields
.field keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V
    .locals 0
    .param p2, "touchEvent"    # Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    .param p3, "keyEvent"    # Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .line 79
    iput-object p3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v5, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    packed-switch v0, :pswitch_data_1

    .line 136
    :cond_1
    :goto_1
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v4, v0, v1

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v4, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget-char v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto/16 :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v4, v0, v1

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v4, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-ne v0, v4, :cond_4

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v5, v0, v1

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:Ljava/util/Set;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 105
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
