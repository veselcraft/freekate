.class public Lcom/my/target/core/models/banners/h;
.super Lcom/my/target/core/models/banners/a;
.source "NativeAdBanner.java"

# interfaces
.implements Lcom/my/target/nativeads/banners/NativePromoBanner;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:F

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/my/target/nativeads/models/ImageData;

.field protected i:Lcom/my/target/nativeads/models/ImageData;

.field protected j:Ljava/lang/String;

.field private k:Lcom/my/target/core/models/banners/m;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/models/banners/h;->l:Ljava/util/List;

    .line 159
    return-void
.end method


# virtual methods
.method public a()Lcom/my/target/core/models/banners/m;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->k:Lcom/my/target/core/models/banners/m;

    return-object v0
.end method

.method public a(Lcom/my/target/core/models/banners/m;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->k:Lcom/my/target/core/models/banners/m;

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->f:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/my/target/core/models/banners/h;->d:F

    .line 127
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->b:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->c:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public final d(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->h:Lcom/my/target/nativeads/models/ImageData;

    .line 62
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->j:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final e(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->i:Lcom/my/target/nativeads/models/ImageData;

    .line 67
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->g:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public final f(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/my/target/core/models/banners/h;->e:I

    .line 147
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/my/target/core/models/banners/h;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->l:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->h:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public getImage()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->i:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/my/target/core/models/banners/h;->d:F

    return v0
.end method

.method public getSubcategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVotes()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/my/target/core/models/banners/h;->e:I

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->k:Lcom/my/target/core/models/banners/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/banners/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/models/banners/h;->l:Ljava/util/List;

    return-object v0
.end method
