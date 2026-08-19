.class public Lcom/felipecsl/gifimageview/library/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

.field frameCount:I

.field frames:Ljava/util/List;

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 33
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    return-void
.end method
