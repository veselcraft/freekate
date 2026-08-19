.class public final Lcom/my/target/common/models/ImageData;
.super Lcom/my/target/cd;
.source "ImageData.java"


# static fields
.field private static volatile memcache:Landroid/util/LruCache;


# instance fields
.field private volatile useCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/my/target/common/models/ImageData$BitmapCache;

    const/high16 v1, 0x1e00000

    invoke-direct {v0, v1}, Lcom/my/target/common/models/ImageData$BitmapCache;-><init>(I)V

    sput-object v0, Lcom/my/target/common/models/ImageData;->memcache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/my/target/cd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/my/target/cd;-><init>(Ljava/lang/String;)V

    .line 117
    iput p2, p0, Lcom/my/target/cd;->width:I

    .line 118
    iput p3, p0, Lcom/my/target/cd;->height:I

    return-void
.end method

.method public static newImageData(Ljava/lang/String;)Lcom/my/target/common/models/ImageData;
    .locals 1

    .line 54
    new-instance v0, Lcom/my/target/common/models/ImageData;

    invoke-direct {v0, p0}, Lcom/my/target/common/models/ImageData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newImageData(Ljava/lang/String;II)Lcom/my/target/common/models/ImageData;
    .locals 1

    .line 59
    new-instance v0, Lcom/my/target/common/models/ImageData;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/common/models/ImageData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public getData()Landroid/graphics/Bitmap;
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/my/target/common/models/ImageData;->useCache:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/my/target/common/models/ImageData;->memcache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/my/target/cd;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageData{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/my/target/cd;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/cd;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/cd;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/my/target/common/models/ImageData;->getData()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
