.class final Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;
.super Ljava/lang/Object;
.source "SimpleBitmapProvider.java"

# interfaces
.implements Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public obtainByteArray(I)[B
    .locals 0

    .line 16
    new-array p1, p1, [B

    return-object p1
.end method

.method public obtainIntArray(I)[I
    .locals 0

    .line 24
    new-array p1, p1, [I

    return-object p1
.end method
