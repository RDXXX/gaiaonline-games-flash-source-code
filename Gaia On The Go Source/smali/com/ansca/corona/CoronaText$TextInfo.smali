.class Lcom/ansca/corona/CoronaText$TextInfo;
.super Ljava/lang/Object;
.source "CoronaText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInfo"
.end annotation


# instance fields
.field myTextPaint:Landroid/text/TextPaint;

.field myTypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/16 v1, 0xff

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTypeface:Landroid/graphics/Typeface;

    .line 43
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    .line 44
    iget-object v0, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 45
    iget-object v0, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    return-void
.end method
