.class public final Lcom/yandex/mobile/ads/video/VideoAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;,
        Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/video/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/video/RequestListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field private final g:Landroid/content/Context;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:I

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->a(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->g:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->b(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/RequestListener;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->a:Lcom/yandex/mobile/ads/video/RequestListener;

    .line 57
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->c(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->b:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    .line 58
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->d(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->c:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->e(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->d:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->f(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->e:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->g(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->g(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->f:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 63
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->h(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->h:I

    .line 64
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->i(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->i:I

    .line 65
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->j(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->j:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->k(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->k:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->l(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->l:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->m(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->m:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->n(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->n:I

    .line 70
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->o(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->o:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->p(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->p:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->q(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->q:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->r(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->r:Ljava/lang/String;

    .line 74
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;->UTF_8:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/video/VideoAdRequest;-><init>(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    if-ltz p0, :cond_0

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBlockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBlocksInfo()Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->b:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    return-object v0
.end method

.method public getCharset()Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->f:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->g:Landroid/content/Context;

    return-object v0
.end method

.method public getExtParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBitrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->n:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/video/VideoAdRequest;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerHeightPix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->i:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/video/VideoAdRequest;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerWidthPix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->h:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/video/VideoAdRequest;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestListener()Lcom/yandex/mobile/ads/video/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/video/RequestListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->a:Lcom/yandex/mobile/ads/video/RequestListener;

    return-object v0
.end method

.method public getTagsList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoContentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest;->k:Ljava/lang/String;

    return-object v0
.end method
