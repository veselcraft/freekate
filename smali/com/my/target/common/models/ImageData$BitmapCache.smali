.class Lcom/my/target/common/models/ImageData$BitmapCache;
.super Landroid/util/LruCache;
.source "ImageData.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/my/target/common/models/ImageData;Landroid/graphics/Bitmap;)I
    .locals 1

    .line 164
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 166
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    .line 168
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 154
    check-cast p1, Lcom/my/target/common/models/ImageData;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/common/models/ImageData$BitmapCache;->sizeOf(Lcom/my/target/common/models/ImageData;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
