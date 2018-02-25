.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderStyle"
.end annotation


# instance fields
.field knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "sliderPatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "knobRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->slider:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 169
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 170
    return-void
.end method
