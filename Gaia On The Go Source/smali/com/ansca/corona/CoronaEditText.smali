.class public Lcom/ansca/corona/CoronaEditText;
.super Landroid/widget/EditText;
.source "CoronaEditText.java"


# instance fields
.field private editingAfter:I

.field private editingBefore:I

.field private editingNumDeleted:I

.field private editingStart:I

.field private isEditing:Z

.field private myClearingFocus:Z

.field private myCurrentText:Ljava/lang/String;

.field private myIsPassword:Z

.field private myKeyListener:Landroid/text/method/TextKeyListener;

.field private myPreviousText:Ljava/lang/String;

.field private myTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    .line 26
    iput v2, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    .line 27
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    .line 28
    iput-object v1, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    .line 31
    iput v2, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    .line 32
    iput v2, p0, Lcom/ansca/corona/CoronaEditText;->editingBefore:I

    .line 33
    iput v2, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    .line 34
    iput-boolean v2, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 35
    iput-object v1, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    .line 40
    new-instance v0, Lcom/ansca/corona/CoronaEditText$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaEditText$1;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 54
    new-instance v0, Lcom/ansca/corona/CoronaEditText$2;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaEditText$2;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    new-instance v0, Lcom/ansca/corona/CoronaEditText$3;

    invoke-direct {v0, p0}, Lcom/ansca/corona/CoronaEditText$3;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    new-instance v0, Lcom/ansca/corona/CoronaEditText$4;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {v0, p0, v1, v2}, Lcom/ansca/corona/CoronaEditText$4;-><init>(Lcom/ansca/corona/CoronaEditText;Landroid/text/method/TextKeyListener$Capitalize;Z)V

    iput-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    .line 148
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 150
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ansca/corona/CoronaEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget v0, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    return v0
.end method

.method static synthetic access$202(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    return p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget v0, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    return v0
.end method

.method static synthetic access$402(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    return p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget v0, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    return v0
.end method

.method static synthetic access$502(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    return p1
.end method

.method static synthetic access$602(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingBefore:I

    return p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/CoronaEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaEditText;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    return v0
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    .line 160
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    .line 163
    return-void
.end method

.method public getTextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 348
    .local v0, "mainLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    .line 353
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextViewAlign()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    const-string v0, ""

    .line 284
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 296
    :pswitch_0
    const-string v0, "unknown"

    .line 299
    :goto_0
    return-object v0

    .line 287
    :pswitch_1
    const-string v0, "left"

    .line 288
    goto :goto_0

    .line 290
    :pswitch_2
    const-string v0, "right"

    .line 291
    goto :goto_0

    .line 293
    :pswitch_3
    const-string v0, "center"

    .line 294
    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTextViewColor()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    return v0
.end method

.method public getTextViewInputType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    const-string v2, "unknown"

    .line 207
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 208
    .local v1, "listener":Landroid/text/method/KeyListener;
    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v1}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    .line 211
    .local v0, "inputType":I
    and-int/lit8 v3, v0, 0xf

    packed-switch v3, :pswitch_data_0

    .line 233
    const-string v2, "default"

    .line 238
    .end local v0    # "inputType":I
    :cond_0
    :goto_0
    return-object v2

    .line 214
    .restart local v0    # "inputType":I
    :pswitch_0
    const-string v2, "number"

    .line 215
    goto :goto_0

    .line 217
    :pswitch_1
    const-string v2, "phone"

    .line 218
    goto :goto_0

    .line 220
    :pswitch_2
    and-int/lit16 v3, v0, 0xff0

    sparse-switch v3, :sswitch_data_0

    .line 228
    const-string v2, "default"

    .line 229
    goto :goto_0

    .line 222
    :sswitch_0
    const-string v2, "url"

    .line 223
    goto :goto_0

    .line 225
    :sswitch_1
    const-string v2, "email"

    .line 226
    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public getTextViewPassword()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    return v0
.end method

.method public getTextViewSize()F
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setReadOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 358
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 335
    .local v0, "savedEditing":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 338
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 341
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 342
    return-void
.end method

.method public setTextViewAlign(Ljava/lang/String;)V
    .locals 2
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v0, 0x3

    .line 264
    .local v0, "gravity":I
    const-string v1, "left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const/4 v0, 0x3

    .line 276
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    .line 277
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setGravity(I)V

    .line 278
    return-void

    .line 268
    :cond_1
    const-string v1, "center"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public setTextViewColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    .line 305
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setTextColor(I)V

    .line 306
    return-void
.end method

.method public setTextViewFont(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)V
    .locals 3
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 325
    invoke-static {p1, p3}, Lcom/ansca/corona/CoronaText;->getTypeface(Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 326
    .local v1, "typeface":Landroid/graphics/Typeface;
    const/4 v0, 0x0

    .line 328
    .local v0, "style":I
    invoke-virtual {p0, v1, v0}, Lcom/ansca/corona/CoronaEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 329
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p2}, Lcom/ansca/corona/CoronaEditText;->setTextSize(IF)V

    .line 330
    return-void
.end method

.method public setTextViewInputType(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputType"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "type":I
    const-string v1, "number"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    const/4 v0, 0x2

    .line 194
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    if-eqz v1, :cond_1

    .line 195
    or-int/lit16 v0, v0, 0x80

    .line 197
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v1

    invoke-interface {v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->inputTypeFlagsNoSuggestions()I

    move-result v1

    or-int/2addr v0, v1

    .line 199
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setInputType(I)V

    .line 201
    :cond_2
    return-void

    .line 182
    :cond_3
    const-string v1, "phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    const/4 v0, 0x3

    goto :goto_0

    .line 184
    :cond_4
    const-string v1, "url"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    const/16 v0, 0x11

    goto :goto_0

    .line 186
    :cond_5
    const-string v1, "email"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    const/16 v0, 0x21

    goto :goto_0

    .line 189
    :cond_6
    const/4 v0, 0x1

    .line 190
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    if-nez v1, :cond_0

    .line 191
    or-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method public setTextViewPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    .line 250
    .local v0, "method":Landroid/text/method/TransformationMethod;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 252
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    .line 253
    return-void

    .line 248
    .end local v0    # "method":Landroid/text/method/TransformationMethod;
    :cond_0
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    .restart local v0    # "method":Landroid/text/method/TransformationMethod;
    goto :goto_0
.end method

.method public setTextViewSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/CoronaEditText;->setTextSize(IF)V

    .line 316
    return-void
.end method
