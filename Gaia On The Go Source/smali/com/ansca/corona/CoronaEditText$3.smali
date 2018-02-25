.class Lcom/ansca/corona/CoronaEditText$3;
.super Ljava/lang/Object;
.source "CoronaEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$302(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$300(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$302(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const/4 v6, 0x0

    .line 101
    .local v6, "newstring":Ljava/lang/String;
    const/4 v7, 0x0

    .line 102
    .local v7, "numDeleted":I
    const/4 v4, 0x0

    .line 104
    .local v4, "newchars":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$300(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v6

    .line 107
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)I

    move-result v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v2}, Lcom/ansca/corona/CoronaEditText;->access$500(Lcom/ansca/corona/CoronaEditText;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaEditText;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v2}, Lcom/ansca/corona/CoronaEditText;->access$400(Lcom/ansca/corona/CoronaEditText;)I

    move-result v2

    iget-object v3, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v3}, Lcom/ansca/corona/CoronaEditText;->access$200(Lcom/ansca/corona/CoronaEditText;)I

    move-result v3

    iget-object v5, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v5}, Lcom/ansca/corona/CoronaEditText;->access$100(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/ansca/corona/events/EventManager;->textEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v4    # "newchars":Ljava/lang/String;
    .end local v6    # "newstring":Ljava/lang/String;
    .end local v7    # "numDeleted":I
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ansca/corona/CoronaEditText;->access$102(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0, p3}, Lcom/ansca/corona/CoronaEditText;->access$202(Lcom/ansca/corona/CoronaEditText;I)I

    .line 88
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0}, Lcom/ansca/corona/CoronaEditText;->access$000(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0, p2}, Lcom/ansca/corona/CoronaEditText;->access$402(Lcom/ansca/corona/CoronaEditText;I)I

    .line 123
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0, p3}, Lcom/ansca/corona/CoronaEditText;->access$602(Lcom/ansca/corona/CoronaEditText;I)I

    .line 124
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText$3;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v0, p4}, Lcom/ansca/corona/CoronaEditText;->access$502(Lcom/ansca/corona/CoronaEditText;I)I

    .line 127
    :cond_0
    return-void
.end method
