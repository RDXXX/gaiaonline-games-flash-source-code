.class public Lcom/ansca/corona/version/android8/AndroidVersionSpecific;
.super Ljava/lang/Object;
.source "AndroidVersionSpecific.java"

# interfaces
.implements Lcom/ansca/corona/version/IAndroidVersionSpecific;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public apiVersion()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x8

    return v0
.end method

.method public audioChannelMono()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    return v0
.end method

.method public inputTypeFlagsNoSuggestions()I
    .locals 1

    .prologue
    .line 74
    const/high16 v0, 0x80000

    return v0
.end method

.method public motionEventACTION_POINTER_DOWN()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x5

    return v0
.end method

.method public motionEventACTION_POINTER_UP()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x6

    return v0
.end method

.method public motionEventGetAction(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public motionEventGetActionIndex(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    return v0
.end method

.method public motionEventGetPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public motionEventGetPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public motionEventGetX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public motionEventGetY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public typefaceCreateFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "typeface":Landroid/graphics/Typeface;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "temp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 32
    :cond_0
    return-object v1
.end method
