.class final Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;
.super Ljava/lang/Object;
.source "SimpleBitmapProvider.java"

# interfaces
.implements Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 8
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public obtainByteArray(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 16
    new-array v0, p1, [B

    return-object v0
.end method

.method public obtainIntArray(I)[I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 24
    new-array v0, p1, [I

    return-object v0
.end method
