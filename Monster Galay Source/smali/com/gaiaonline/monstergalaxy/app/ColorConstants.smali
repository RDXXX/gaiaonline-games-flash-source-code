.class public Lcom/gaiaonline/monstergalaxy/app/ColorConstants;
.super Ljava/lang/Object;
.source "ColorConstants.java"


# static fields
.field public static COLOR_BAD:Lcom/badlogic/gdx/graphics/Color;

.field public static COLOR_GOOD:Lcom/badlogic/gdx/graphics/Color;

.field public static DAMAGE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static DAMAGE_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static ENERGY_TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static FIFTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static HINT_ARROW_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static ISLAND_TEXT_NAME_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static ISLAND_TEXT_PROGRESS_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static PRIMARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static RUNNAWAY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static SECONDARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static SHARE_DESCRIPTION_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static SUGESTED_NODE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static TERTIARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private static colors:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 15
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 16
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->DAMAGE_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 17
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->DAMAGE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    .line 42
    :try_start_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "colors.properties"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "secondary_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 48
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "tertiary_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->TERTIARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 49
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "fourth_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FOURTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "tertiary_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->TERTIARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "fifth_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FIFTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 54
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "primary_grayed_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "secondary_grayed_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_GRAYED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 56
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "secondary_shadow_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 57
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "hint_arrow_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->HINT_ARROW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 58
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "runnaway_font_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->RUNNAWAY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "color_bad"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->COLOR_BAD:Lcom/badlogic/gdx/graphics/Color;

    .line 60
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "color_good"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->COLOR_GOOD:Lcom/badlogic/gdx/graphics/Color;

    .line 61
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "suggested_node_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SUGESTED_NODE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "island_text_name_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ISLAND_TEXT_NAME_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 63
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "island_text_progress_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ISLAND_TEXT_PROGRESS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "energy_text_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->ENERGY_TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 65
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    const-string v2, "share_description_color"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SHARE_DESCRIPTION_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 9
    return-void

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "rgb":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 72
    .local v3, "r":F
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 73
    .local v2, "g":F
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 74
    .local v1, "b":F
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 76
    .local v0, "a":F
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v3, v2, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v5
.end method

.method public static getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->colors:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->buildColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
