.class public interface abstract Lcom/badlogic/gdx/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Graphics$BufferFormat;,
        Lcom/badlogic/gdx/Graphics$DisplayMode;,
        Lcom/badlogic/gdx/Graphics$GraphicsType;
    }
.end annotation


# virtual methods
.method public abstract getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;
.end method

.method public abstract getDeltaTime()F
.end method

.method public abstract getDensity()F
.end method

.method public abstract getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
.end method

.method public abstract getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;
.end method

.method public abstract getFramesPerSecond()I
.end method

.method public abstract getGL10()Lcom/badlogic/gdx/graphics/GL10;
.end method

.method public abstract getGL11()Lcom/badlogic/gdx/graphics/GL11;
.end method

.method public abstract getGL20()Lcom/badlogic/gdx/graphics/GL20;
.end method

.method public abstract getGLCommon()Lcom/badlogic/gdx/graphics/GLCommon;
.end method

.method public abstract getGLU()Lcom/badlogic/gdx/graphics/GLU;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPpcX()F
.end method

.method public abstract getPpcY()F
.end method

.method public abstract getPpiX()F
.end method

.method public abstract getPpiY()F
.end method

.method public abstract getType()Lcom/badlogic/gdx/Graphics$GraphicsType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isGL11Available()Z
.end method

.method public abstract isGL20Available()Z
.end method

.method public abstract setDisplayMode(IIZ)Z
.end method

.method public abstract setDisplayMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z
.end method

.method public abstract setIcon(Lcom/badlogic/gdx/graphics/Pixmap;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setVSync(Z)V
.end method

.method public abstract supportsDisplayModeChange()Z
.end method

.method public abstract supportsExtension(Ljava/lang/String;)Z
.end method
