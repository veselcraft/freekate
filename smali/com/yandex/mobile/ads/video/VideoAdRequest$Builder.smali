.class public final Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/VideoAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/video/RequestListener;
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

.field private final c:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lcom/yandex/mobile/ads/video/RequestListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blocksInfo"    # Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .param p4, "targetRef"    # Ljava/lang/String;
    .param p5, "pageRef"    # Ljava/lang/String;
    .param p6, "blockId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;",
            "Lcom/yandex/mobile/ads/video/RequestListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "requestListener":Lcom/yandex/mobile/ads/video/RequestListener;, "Lcom/yandex/mobile/ads/video/RequestListener<Ljava/util/List<Lcom/yandex/mobile/ads/video/models/ad/VideoAd;>;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;-><init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lcom/yandex/mobile/ads/video/RequestListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->a:Landroid/content/Context;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;Lcom/yandex/mobile/ads/video/RequestListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "blocksInfo"    # Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .param p3, "targetRef"    # Ljava/lang/String;
    .param p4, "pageRef"    # Ljava/lang/String;
    .param p5, "blockId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;",
            "Lcom/yandex/mobile/ads/video/RequestListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/video/models/ad/VideoAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "requestListener":Lcom/yandex/mobile/ads/video/RequestListener;, "Lcom/yandex/mobile/ads/video/RequestListener<Ljava/util/List<Lcom/yandex/mobile/ads/video/models/ad/VideoAd;>;>;"
    const/4 v0, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->h:I

    .line 92
    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->i:I

    .line 97
    iput v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->n:I

    .line 121
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->c:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    .line 122
    iput-object p2, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->b:Lcom/yandex/mobile/ads/video/RequestListener;

    .line 123
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->d:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->e:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->f:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->c:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    const-string v1, "BlocksInfo"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->f:Ljava/lang/String;

    const-string v1, "BlockId"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->d:Ljava/lang/String;

    const-string v1, "TargetRef"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->e:Ljava/lang/String;

    const-string v1, "PageRef"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/video/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/RequestListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->b:Lcom/yandex/mobile/ads/video/RequestListener;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->c:Lcom/yandex/mobile/ads/video/models/blocksinfo/BlocksInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->g:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    return-object v0
.end method

.method static synthetic h(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->h:I

    return v0
.end method

.method static synthetic i(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->i:I

    return v0
.end method

.method static synthetic j(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->n:I

    return v0
.end method

.method static synthetic o(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yandex/mobile/ads/video/VideoAdRequest;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/yandex/mobile/ads/video/VideoAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/video/VideoAdRequest;-><init>(Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;B)V

    return-object v0
.end method

.method public setCharset(Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "charset"    # Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->g:Lcom/yandex/mobile/ads/video/VideoAdRequest$Charset;

    .line 230
    return-object p0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->j:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setContentName(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "contentName"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->k:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setExtendedParams(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "extendedParams"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->r:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public setGenreIds(Ljava/util/List;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->o:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public setGenreNames(Ljava/util/List;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "genreNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->p:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setMaxBitrate(I)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "maxBitrate"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->n:I

    .line 210
    return-object p0
.end method

.method public setPlayerSize(II)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->h:I

    .line 164
    iput p2, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->i:I

    .line 165
    return-object p0
.end method

.method public setPublisherId(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "publisherId"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->l:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public setPublisherName(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 0
    .param p1, "publisherName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->m:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setTagsList(Ljava/util/List;)Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "tagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/VideoAdRequest$Builder;->q:Ljava/lang/String;

    .line 257
    return-object p0
.end method
