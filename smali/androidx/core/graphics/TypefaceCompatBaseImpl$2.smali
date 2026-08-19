.class Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# direct methods
.method constructor <init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I
    .locals 0

    .line 127
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0

    .line 124
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;->getWeight(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I

    move-result p1

    return p1
.end method

.method public isItalic(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z
    .locals 0

    .line 132
    invoke-virtual {p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0

    .line 124
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;->isItalic(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z

    move-result p1

    return p1
.end method
