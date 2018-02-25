.class public Lcom/badlogic/gdx/backends/android/AndroidGLU;
.super Ljava/lang/Object;
.source "AndroidGLU.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GLU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gluLookAt(Lcom/badlogic/gdx/graphics/GL10;FFFFFFFFF)V
    .locals 10
    .param p1, "gl"    # Lcom/badlogic/gdx/graphics/GL10;
    .param p2, "eyeX"    # F
    .param p3, "eyeY"    # F
    .param p4, "eyeZ"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F
    .param p7, "centerZ"    # F
    .param p8, "upX"    # F
    .param p9, "upY"    # F
    .param p10, "upZ"    # F

    .prologue
    .line 27
    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    .end local p1    # "gl":Lcom/badlogic/gdx/graphics/GL10;
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 28
    return-void
.end method

.method public gluOrtho2D(Lcom/badlogic/gdx/graphics/GL10;FFFF)V
    .locals 1
    .param p1, "gl"    # Lcom/badlogic/gdx/graphics/GL10;
    .param p2, "left"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "top"    # F

    .prologue
    .line 32
    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    .end local p1    # "gl":Lcom/badlogic/gdx/graphics/GL10;
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 33
    return-void
.end method

.method public gluPerspective(Lcom/badlogic/gdx/graphics/GL10;FFFF)V
    .locals 1
    .param p1, "gl"    # Lcom/badlogic/gdx/graphics/GL10;
    .param p2, "fovy"    # F
    .param p3, "aspect"    # F
    .param p4, "zNear"    # F
    .param p5, "zFar"    # F

    .prologue
    .line 37
    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    .end local p1    # "gl":Lcom/badlogic/gdx/graphics/GL10;
    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 38
    return-void
.end method

.method public gluProject(FFF[FI[FI[II[FI)Z
    .locals 2
    .param p1, "objX"    # F
    .param p2, "objY"    # F
    .param p3, "objZ"    # F
    .param p4, "model"    # [F
    .param p5, "modelOffset"    # I
    .param p6, "project"    # [F
    .param p7, "projectOffset"    # I
    .param p8, "view"    # [I
    .param p9, "viewOffset"    # I
    .param p10, "win"    # [F
    .param p11, "winOffset"    # I

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    move-result v0

    .line 45
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gluUnProject(FFF[FI[FI[II[FI)Z
    .locals 2
    .param p1, "winX"    # F
    .param p2, "winY"    # F
    .param p3, "winZ"    # F
    .param p4, "model"    # [F
    .param p5, "modelOffset"    # I
    .param p6, "project"    # [F
    .param p7, "projectOffset"    # I
    .param p8, "view"    # [I
    .param p9, "viewOffset"    # I
    .param p10, "obj"    # [F
    .param p11, "objOffset"    # I

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    move-result v0

    .line 53
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
