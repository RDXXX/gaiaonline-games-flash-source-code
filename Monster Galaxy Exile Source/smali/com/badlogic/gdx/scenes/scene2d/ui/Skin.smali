.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
.super Ljava/lang/Object;
.source "Skin.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field buttonStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;",
            ">;"
        }
    .end annotation
.end field

.field checkBoxStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;",
            ">;"
        }
    .end annotation
.end field

.field colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field comboBoxStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;",
            ">;"
        }
    .end annotation
.end field

.field fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field imageButtonStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;",
            ">;"
        }
    .end annotation
.end field

.field imageToggleButtonStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;",
            ">;"
        }
    .end annotation
.end field

.field labelStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field listStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;",
            ">;"
        }
    .end annotation
.end field

.field ninePatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field paneStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;",
            ">;"
        }
    .end annotation
.end field

.field regions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field scrollPaneStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;",
            ">;"
        }
    .end annotation
.end field

.field sliderStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;",
            ">;"
        }
    .end annotation
.end field

.field splitPaneStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;",
            ">;"
        }
    .end annotation
.end field

.field textFieldStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;",
            ">;"
        }
    .end annotation
.end field

.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field toggleButtonStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;",
            ">;"
        }
    .end annotation
.end field

.field windowStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "textureFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->ninePatches:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->regions:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->colors:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    .line 217
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseSkin(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->ninePatches:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->regions:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->colors:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    .line 225
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 226
    return-void
.end method

.method private error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 261
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 9
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 460
    const-string v7, "button"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 461
    .local v5, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "name":Ljava/lang/String;
    const-string v7, "down"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 463
    .local v0, "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v7, "up"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v6

    .line 464
    .local v6, "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v7, "font"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 465
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v7, "fontColor"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 467
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v4, :cond_0

    const-string v7, "No name given for button style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 468
    :cond_0
    if-nez v0, :cond_1

    const-string v7, "No \'down\' nine-patch given for button style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 469
    :cond_1
    if-nez v6, :cond_2

    const-string v7, "No \'up\' nine-patch given for button style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 470
    :cond_2
    if-nez v1, :cond_3

    const-string v7, "No \'font\' nine-patch given for button style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 471
    :cond_3
    if-nez v2, :cond_4

    const-string v7, "No \'fontColor\' given for button style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 473
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v8, v1, v2, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    .end local v0    # "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6    # "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_5
    return-void
.end method

.method private parseCheckBoxStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 9
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 428
    const-string v7, "checkbox"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 429
    .local v5, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "name":Ljava/lang/String;
    const-string v7, "font"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 431
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v7, "fontColor"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 432
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    const-string v7, "checked"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 433
    .local v0, "checked":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v7, "unchecked"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    .line 435
    .local v6, "unchecked":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v4, :cond_0

    const-string v7, "No name given for checkbox style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 436
    :cond_0
    if-nez v1, :cond_1

    const-string v7, "No \'font\' given for checkbox style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 437
    :cond_1
    if-nez v2, :cond_2

    const-string v7, "No \'fontColor\' given for checkbox style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 438
    :cond_2
    if-nez v0, :cond_3

    const-string v7, "No \'checked\' region given for checkbox style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 439
    :cond_3
    if-nez v6, :cond_4

    const-string v7, "No \'unchecked\' region given for checkbox style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 441
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v8, v1, v2, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    .end local v0    # "checked":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6    # "unchecked":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_5
    return-void
.end method

.method private parseColors(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "library"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 500
    const-string v3, "color"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 501
    .local v1, "color":Lcom/badlogic/gdx/utils/XmlReader$Element;
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const-string v3, "r"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;)F

    move-result v3

    const-string v4, "g"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;)F

    move-result v4

    const-string v5, "b"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;)F

    move-result v5

    const-string v6, "a"

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 503
    .local v0, "col":Lcom/badlogic/gdx/graphics/Color;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->colors:Ljava/util/Map;

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 505
    .end local v0    # "col":Lcom/badlogic/gdx/graphics/Color;
    .end local v1    # "color":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_0
    return-void
.end method

.method private parseComboBoxStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 10
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 281
    const-string v0, "combobox"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 282
    .local v8, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "name":Ljava/lang/String;
    const-string v0, "background"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    .line 284
    .local v3, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "listBackground"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    .line 285
    .local v4, "listBackground":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "listSelection"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v5

    .line 286
    .local v5, "listSelection":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "font"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 287
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v0, "fontColor"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 289
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v7, :cond_0

    const-string v0, "No name given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 290
    :cond_0
    if-nez v3, :cond_1

    const-string v0, "No \'background\' nine-patch given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 291
    :cond_1
    if-nez v4, :cond_2

    const-string v0, "No \'listBackground\' nine-patch given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 292
    :cond_2
    if-nez v5, :cond_3

    const-string v0, "No \'listSelection\' nine-patch given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 293
    :cond_3
    if-nez v1, :cond_4

    const-string v0, "No \'font\' given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 294
    :cond_4
    if-nez v2, :cond_5

    const-string v0, "No \'fontColor\' given for combobox style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 296
    :cond_5
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 298
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v3    # "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v4    # "listBackground":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v5    # "listSelection":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_6
    return-void
.end method

.method private parseFonts(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 7
    .param p1, "library"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 508
    const-string v5, "font"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 509
    .local v2, "font":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "file"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 511
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 512
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 513
    .local v0, "bitmapFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    .end local v0    # "bitmapFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "font":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private parseImageButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 446
    const-string v5, "imagebutton"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 447
    .local v3, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "name":Ljava/lang/String;
    const-string v5, "down"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 449
    .local v0, "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v5, "up"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    .line 451
    .local v4, "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v2, :cond_0

    const-string v5, "No name given for button style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 452
    :cond_0
    if-nez v0, :cond_1

    const-string v5, "No \'down\' nine-patch given for button style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 453
    :cond_1
    if-nez v4, :cond_2

    const-string v5, "No \'up\' nine-patch given for button style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 455
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-direct {v6, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    .end local v0    # "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_3
    return-void
.end method

.method private parseImageToggleButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 383
    const-string v5, "imagetogglebutton"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 384
    .local v3, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "name":Ljava/lang/String;
    const-string v5, "down"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 386
    .local v0, "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v5, "up"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    .line 388
    .local v4, "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v2, :cond_0

    const-string v5, "No name given for togglebutton style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 389
    :cond_0
    if-nez v0, :cond_1

    const-string v5, "No \'down\' nine-patch given for togglebutton style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 390
    :cond_1
    if-nez v4, :cond_2

    const-string v5, "No \'up\' nine-patch given for togglebutton style"

    invoke-direct {p0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 392
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    invoke-direct {v6, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v0    # "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_3
    return-void
.end method

.method private parseLabelStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 8
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 478
    const-string v5, "label"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 479
    .local v4, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "name":Ljava/lang/String;
    const-string v5, "font"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    .line 481
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v5, "fontColor"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 483
    .local v1, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v3, :cond_0

    const-string v5, "No name given for label style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 484
    :cond_0
    if-nez v0, :cond_1

    const-string v5, "No \'font\' given for label style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 485
    :cond_1
    if-nez v1, :cond_2

    const-string v5, "No \'fontColor\' given for label style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 487
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v7, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 489
    .end local v0    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_3
    return-void
.end method

.method private parseLibrary(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "skin"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 492
    const-string v1, "library"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 493
    .local v0, "library":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseColors(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 494
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseNinePatches(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 495
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseRegions(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 496
    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseFonts(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 497
    return-void
.end method

.method private parseListStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 9
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 365
    const-string v7, "list"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 366
    .local v6, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "name":Ljava/lang/String;
    const-string v7, "font"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    .line 368
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v7, "fontColorUnselected"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 369
    .local v2, "fontColorUnselected":Lcom/badlogic/gdx/graphics/Color;
    const-string v7, "fontColorSelected"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 370
    .local v1, "fontColorSelected":Lcom/badlogic/gdx/graphics/Color;
    const-string v7, "selected"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v5

    .line 372
    .local v5, "selectedPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v4, :cond_0

    const-string v7, "No name given for list style"

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 373
    :cond_0
    if-nez v0, :cond_1

    const-string v7, "No font given for list style"

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 374
    :cond_1
    if-nez v2, :cond_2

    const-string v7, "No \'fontColorUnselected\' given for list style"

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 375
    :cond_2
    if-nez v1, :cond_3

    const-string v7, "No \'fontColorSelected\' given for list style"

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 376
    :cond_3
    if-nez v5, :cond_4

    const-string v7, "No \'selected\' nine-patch given for list style"

    invoke-direct {p0, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 378
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v8, v0, v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    .end local v0    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1    # "fontColorSelected":Lcom/badlogic/gdx/graphics/Color;
    .end local v2    # "fontColorUnselected":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "selectedPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v6    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_5
    return-void
.end method

.method private parseNinePatch(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 5
    .param p1, "ninePatch"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    const/16 v4, 0x9

    .line 530
    new-array v2, v4, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 531
    .local v2, "regions":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "region"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 532
    .local v1, "patches":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    array-length v3, v2

    if-eq v3, v4, :cond_0

    const-string v3, "Nine-patch definition has to have 9 regions"

    invoke-direct {p0, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 533
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 534
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseRegion(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    aput-object v3, v2, v0

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_1
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v3
.end method

.method private parseNinePatches(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 5
    .param p1, "library"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 524
    const-string v2, "ninepatch"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 525
    .local v1, "ninePatch":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->ninePatches:Ljava/util/Map;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseNinePatch(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    .end local v1    # "ninePatch":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_0
    return-void
.end method

.method private parsePaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 353
    const-string v4, "pane"

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 354
    .local v3, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "name":Ljava/lang/String;
    const-string v4, "background"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    .line 357
    .local v2, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v1, :cond_0

    const-string v4, "No name given for pane style"

    invoke-direct {p0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 358
    :cond_0
    if-nez v2, :cond_1

    const-string v4, "No \'background\' given for pane style"

    invoke-direct {p0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 360
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v3    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_2
    return-void
.end method

.method private parseRegion(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 6
    .param p1, "region"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 540
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v3

    const-string v4, "width"

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v4

    const-string v5, "height"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    return-object v0
.end method

.method private parseRegions(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 5
    .param p1, "library"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 518
    const-string v2, "region"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 519
    .local v1, "region":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->regions:Ljava/util/Map;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseRegion(Lcom/badlogic/gdx/utils/XmlReader$Element;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    .end local v1    # "region":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_0
    return-void
.end method

.method private parseScrollPaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 10
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 333
    const-string v0, "scrollpane"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 334
    .local v8, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "name":Ljava/lang/String;
    const-string v0, "background"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v1

    .line 336
    .local v1, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "hScroll"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    .line 337
    .local v2, "hScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "hScrollKnob"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    .line 338
    .local v3, "hScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "vScroll"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    .line 339
    .local v4, "vScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "vScrollKnob"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v5

    .line 341
    .local v5, "vScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v7, :cond_0

    const-string v0, "No name given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 342
    :cond_0
    if-nez v1, :cond_1

    const-string v0, "No \'background\' given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 343
    :cond_1
    if-nez v2, :cond_2

    const-string v0, "No \'hScroll\' given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 344
    :cond_2
    if-nez v3, :cond_3

    const-string v0, "No \'hScrollKnob\' given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 345
    :cond_3
    if-nez v4, :cond_4

    const-string v0, "No \'vScroll\' given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 346
    :cond_4
    if-nez v5, :cond_5

    const-string v0, "No \'vScrollKnob\' given for scrollpane style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 348
    :cond_5
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v1    # "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v2    # "hScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v3    # "hScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v4    # "vScroll":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v5    # "vScrollKnob":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_6
    return-void
.end method

.method private parseSliderStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 7
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 415
    const-string v5, "slider"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 416
    .local v4, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "name":Ljava/lang/String;
    const-string v5, "slider"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    .line 418
    .local v3, "sliderPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v5, "knob"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 420
    .local v1, "knobPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v2, :cond_0

    const-string v5, "No name given for slider style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 421
    :cond_0
    if-nez v3, :cond_1

    const-string v5, "No \'slider\' nine-patch given for slider style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 422
    :cond_1
    if-nez v1, :cond_2

    const-string v5, "No \'knob\' region given for slider style"

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 423
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-direct {v6, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    .end local v1    # "knobPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sliderPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v4    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_3
    return-void
.end method

.method private parseSplitPaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 321
    const-string v4, "splitpane"

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 322
    .local v3, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "name":Ljava/lang/String;
    const-string v4, "handle"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 325
    .local v0, "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-nez v2, :cond_0

    const-string v4, "No name given for splitpane style"

    invoke-direct {p0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 326
    :cond_0
    if-nez v0, :cond_1

    const-string v4, "No \'handle\' given for splitpane style"

    invoke-direct {p0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    .end local v0    # "handle":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_2
    return-void
.end method

.method private parseTextFieldStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 10
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 301
    const-string v0, "textfield"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 302
    .local v8, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "name":Ljava/lang/String;
    const-string v0, "background"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v5

    .line 304
    .local v5, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "cursor"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    .line 305
    .local v3, "cursor":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v0, "font"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 306
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v0, "fontColor"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 307
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    const-string v0, "selection"

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 309
    .local v4, "selection":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-nez v7, :cond_0

    const-string v0, "No name given for textfield style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 310
    :cond_0
    if-nez v5, :cond_1

    const-string v0, "No \'background\' nine-patch given for textfield style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 311
    :cond_1
    if-nez v3, :cond_2

    const-string v0, "No \'cursor\' nine-patch given for textfield style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 312
    :cond_2
    if-nez v1, :cond_3

    const-string v0, "No \'font\' given for textfield style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 313
    :cond_3
    if-nez v2, :cond_4

    const-string v0, "No \'fontColor\' given for textfield stye"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 314
    :cond_4
    if-nez v4, :cond_5

    const-string v0, "No \'selection\' region given for textfield style"

    invoke-direct {p0, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 316
    :cond_5
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v3    # "cursor":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v4    # "selection":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v5    # "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_6
    return-void
.end method

.method private parseToggleButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 9
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 397
    const-string v7, "togglebutton"

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 398
    .local v5, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "name":Ljava/lang/String;
    const-string v7, "down"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 400
    .local v0, "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v7, "up"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v6

    .line 401
    .local v6, "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v7, "font"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 402
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v7, "fontColor"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 404
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v4, :cond_0

    const-string v7, "No name given for togglebutton style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 405
    :cond_0
    if-nez v0, :cond_1

    const-string v7, "No \'down\' nine-patch given for togglebutton style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 406
    :cond_1
    if-nez v6, :cond_2

    const-string v7, "No \'up\' nine-patch given for togglebutton style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 407
    :cond_2
    if-nez v1, :cond_3

    const-string v7, "No \'font\' given for togglebutton style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 408
    :cond_3
    if-nez v2, :cond_4

    const-string v7, "No \'fontColor\' given for togglebutton style"

    invoke-direct {p0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 410
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    invoke-direct {v8, v1, v2, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 412
    .end local v0    # "down":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v6    # "up":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    :cond_5
    return-void
.end method

.method private parseWindowStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 8
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 265
    const-string v6, "window"

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 266
    .local v5, "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "name":Ljava/lang/String;
    const-string v6, "background"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 268
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v6, "titleFont"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    .line 269
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const-string v6, "titleFontColor"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    .line 271
    .local v2, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    if-nez v4, :cond_0

    const-string v6, "No name given for window style"

    invoke-direct {p0, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 272
    :cond_0
    if-nez v0, :cond_1

    const-string v6, "No \'background\' nine-patch given for window style"

    invoke-direct {p0, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 273
    :cond_1
    if-nez v1, :cond_2

    const-string v6, "No \'font\' given for window style"

    invoke-direct {p0, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 274
    :cond_2
    if-nez v2, :cond_3

    const-string v6, "No \'fontColor\' given for window style"

    invoke-direct {p0, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->error(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 276
    :cond_3
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    invoke-direct {v7, v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    .end local v0    # "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "style":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_4
    return-void
.end method


# virtual methods
.method public addButtonStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    return-void
.end method

.method public addCheckBoxStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return-void
.end method

.method public addColor(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->colors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public addComboBoxStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void
.end method

.method public addFont(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method public addImageButtonStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method public addImageToggleButtonStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    return-void
.end method

.method public addLabelStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method public addListStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-void
.end method

.method public addNinePatch(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ninePatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->ninePatches:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method public addPaneStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method

.method public addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->regions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public addScrollPaneStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    return-void
.end method

.method public addSliderStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-void
.end method

.method public addSplitPaneStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-void
.end method

.method public addTextFieldStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-void
.end method

.method public addToggleButtonStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    return-void
.end method

.method public addWindowStyle(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1080
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 1081
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    goto :goto_0

    .line 1083
    .end local v0    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_0
    return-void
.end method

.method public getButtonStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method public getCheckBoxStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->colors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getComboBoxStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    return-object v0
.end method

.method public getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->fonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getImageButtonStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    return-object v0
.end method

.method public getImageToggleButtonStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    return-object v0
.end method

.method public getLabelStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getListStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->ninePatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-object v0
.end method

.method public getPaneStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    return-object v0
.end method

.method public getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->regions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getScrollPaneStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    return-object v0
.end method

.method public getSliderStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public getSplitPaneStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    return-object v0
.end method

.method public getTextFieldStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getToggleButtonStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    return-object v0
.end method

.method public getWindowStyle(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    return-object v0
.end method

.method public newButton(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 853
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v0

    return-object v0
.end method

.method public newButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 862
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->buttonStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    return-object v1
.end method

.method public newCheckBox(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    const-string v2, "default"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    return-object v1
.end method

.method public newCheckBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 896
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->checkBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    return-object v1
.end method

.method public newComboBox(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;
    .param p3, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 1040
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newComboBox(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    move-result-object v0

    return-object v0
.end method

.method public newComboBox(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;
    .param p3, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p4, "style"    # Ljava/lang/String;

    .prologue
    .line 1050
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->comboBoxStyles:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;)V

    return-object v1
.end method

.method public newImageButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 819
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newImageButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method public newImageButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V

    return-object v1
.end method

.method public newImageToggleButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 836
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newImageToggleButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;

    move-result-object v0

    return-object v0
.end method

.method public newImageToggleButton(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 845
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->imageToggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageToggleButton$ImageToggleButtonStyle;)V

    return-object v1
.end method

.method public newLabel(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 904
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    const-string v2, "default"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-object v1
.end method

.method public newLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 913
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->labelStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-object v1
.end method

.method public newList(Ljava/lang/String;[Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;

    .prologue
    .line 944
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    move-result-object v0

    return-object v0
.end method

.method public newList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 953
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->listStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    return-object v1
.end method

.method public newPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;II)Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "prefWidth"    # I
    .param p4, "prefHeight"    # I

    .prologue
    .line 963
    const-string v5, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;

    move-result-object v0

    return-object v0
.end method

.method public newPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "prefWidth"    # I
    .param p4, "prefHeight"    # I
    .param p5, "style"    # Ljava/lang/String;

    .prologue
    .line 974
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paneStyles:Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Pane;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;IILcom/badlogic/gdx/scenes/scene2d/ui/Pane$PaneStyle;)V

    return-object v0
.end method

.method public newScrollPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "prefWidth"    # I
    .param p5, "prefHeight"    # I

    .prologue
    .line 985
    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newScrollPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object v0

    return-object v0
.end method

.method public newScrollPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "prefWidth"    # I
    .param p5, "prefHeight"    # I
    .param p6, "style"    # Ljava/lang/String;

    .prologue
    .line 997
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scrollPaneStyles:Ljava/util/Map;

    invoke-interface {v1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;IILcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-object v0
.end method

.method public newSlider(Ljava/lang/String;FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "step"    # F

    .prologue
    .line 924
    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newSlider(Ljava/lang/String;FFFFLjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    move-result-object v0

    return-object v0
.end method

.method public newSlider(Ljava/lang/String;FFFFLjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "step"    # F
    .param p6, "style"    # Ljava/lang/String;

    .prologue
    .line 936
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->sliderStyles:Ljava/util/Map;

    invoke-interface {v1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(Ljava/lang/String;FFFFLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    return-object v0
.end method

.method public newSplitPane(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZIILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "firstWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "secondWidget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p5, "vertical"    # Z
    .param p6, "prefWidth"    # I
    .param p7, "prefHeight"    # I
    .param p8, "style"    # Ljava/lang/String;

    .prologue
    .line 1014
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->splitPaneStyles:Ljava/util/Map;

    move-object/from16 v0, p8

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZIILcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V

    return-object v1
.end method

.method public newTextField(Ljava/lang/String;F)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F

    .prologue
    .line 1022
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newTextField(Ljava/lang/String;FLjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v0

    return-object v0
.end method

.method public newTextField(Ljava/lang/String;FLjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 1031
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->textFieldStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-object v1
.end method

.method public newToggleButton(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 870
    const-string v0, "default"

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newToggleButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;

    move-result-object v0

    return-object v0
.end method

.method public newToggleButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;

    .prologue
    .line 879
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->toggleButtonStyles:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;

    invoke-direct {v1, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ToggleButton$ToggleButtonStyle;)V

    return-object v1
.end method

.method public newWindow(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;II)Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1061
    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newWindow(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    move-result-object v0

    return-object v0
.end method

.method public newWindow(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;IILjava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "style"    # Ljava/lang/String;

    .prologue
    .line 1073
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->windowStyles:Ljava/util/Map;

    invoke-interface {v1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;Ljava/lang/String;IILcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V

    return-object v0
.end method

.method public parseSkin(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 5
    .param p1, "skinFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 234
    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    .line 235
    .local v2, "xml":Lcom/badlogic/gdx/utils/XmlReader;
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 236
    .local v1, "skin":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-direct {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseLibrary(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 237
    const-string v3, "widgetStyles"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseWidgetStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-void

    .line 238
    .end local v1    # "skin":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v2    # "xml":Lcom/badlogic/gdx/utils/XmlReader;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Couldn\'t parse skinFile"

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected parseWidgetStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 0
    .param p1, "styles"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseCheckBoxStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseLabelStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseSliderStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseToggleButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseListStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parsePaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseScrollPaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseSplitPaneStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseTextFieldStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseComboBoxStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseWindowStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseImageButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->parseImageToggleButtonStyles(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 258
    return-void
.end method
