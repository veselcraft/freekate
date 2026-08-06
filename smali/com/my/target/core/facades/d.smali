.class public final Lcom/my/target/core/facades/d;
.super Ljava/lang/Object;
.source "InterstitialImageAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c;


# instance fields
.field private a:Lcom/my/target/core/models/banners/f;

.field private b:Lcom/my/target/core/models/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/my/target/core/facades/c$a;

.field private e:Lcom/my/target/core/net/b$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/f;Lcom/my/target/core/models/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/my/target/core/facades/d$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/d$1;-><init>(Lcom/my/target/core/facades/d;)V

    iput-object v0, p0, Lcom/my/target/core/facades/d;->e:Lcom/my/target/core/net/b$a;

    .line 33
    iput-object p1, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    .line 34
    iput-object p2, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/models/c;

    .line 35
    iput-object p3, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    .line 37
    const-string v0, "InterstitialImageAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/facades/d;)Lcom/my/target/core/facades/c$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    return-object v0
.end method

.method private a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/models/ImageData;",
            ">;II)",
            "Lcom/my/target/nativeads/models/ImageData;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p3, :cond_0

    .line 78
    const-string v1, "Display height is zero"

    invoke-static {v1}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-object v0

    .line 82
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v5, v1, v2

    .line 83
    const/4 v1, 0x0

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    move-object v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    .line 88
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 90
    :cond_1
    new-instance v3, Lcom/my/target/core/async/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Image has invalid size: w="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " h="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " in banner with id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v7}, Lcom/my/target/core/models/banners/f;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/my/target/core/async/a;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/my/target/core/async/a;->a(Ljava/lang/String;)V

    .line 94
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/my/target/core/async/a;->a(I)V

    .line 95
    const-string v4, "JSONError"

    invoke-virtual {v3, v4}, Lcom/my/target/core/async/a;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/async/a;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/my/target/core/async/a;->a(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v3}, Lcom/my/target/core/async/a;->a()V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    .line 105
    cmpg-float v3, v5, v4

    if-gez v3, :cond_4

    .line 107
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 108
    int-to-float v7, p2

    cmpl-float v7, v3, v7

    if-lez v7, :cond_3

    .line 110
    int-to-float v3, p2

    .line 113
    :cond_3
    div-float v4, v3, v4

    move v8, v4

    move v4, v3

    move v3, v8

    .line 126
    :goto_2
    mul-float/2addr v3, v4

    .line 128
    cmpl-float v2, v3, v2

    if-lez v2, :cond_6

    move-object v1, v0

    move v2, v3

    .line 137
    goto/16 :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 118
    int-to-float v7, p3

    cmpl-float v7, v3, v7

    if-lez v7, :cond_5

    .line 120
    int-to-float v3, p3

    .line 123
    :cond_5
    mul-float/2addr v4, v3

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 141
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/facades/c$a;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    .line 159
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDisplay(Lcom/my/target/core/facades/c;)V

    .line 199
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 153
    :goto_2
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 150
    goto :goto_1

    :cond_4
    move v3, v2

    .line 151
    goto :goto_2
.end method

.method public final b()Lcom/my/target/core/models/banners/f;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    return-object v0
.end method

.method public final b(Lcom/my/target/core/models/banners/d;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/my/target/core/facades/d;->b:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onClick(Lcom/my/target/core/facades/c;)V

    .line 209
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDismiss(Lcom/my/target/core/facades/c;)V

    .line 222
    :cond_0
    return-void
.end method

.method public final load()V
    .locals 7

    .prologue
    .line 164
    iget-object v0, p0, Lcom/my/target/core/facades/d;->a:Lcom/my/target/core/models/banners/f;

    .line 1042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v2

    iget-object v3, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/my/target/core/providers/b;->b(Landroid/content/Context;)V

    .line 1045
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/providers/b;->a()I

    move-result v2

    .line 1046
    invoke-static {}, Lcom/my/target/core/providers/d;->a()Lcom/my/target/core/providers/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/core/providers/d;->b()Lcom/my/target/core/providers/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/my/target/core/providers/b;->b()I

    move-result v3

    .line 1048
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/my/target/core/facades/d;->a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v4

    .line 1049
    if-eqz v4, :cond_0

    .line 1051
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-virtual {v0, v4}, Lcom/my/target/core/models/banners/f;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1055
    :cond_0
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v5, v6, v2}, Lcom/my/target/core/facades/d;->a(Ljava/util/List;II)Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    .line 1056
    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {v0, v2}, Lcom/my/target/core/models/banners/f;->c(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1062
    :cond_1
    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    .line 1064
    :cond_2
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->a()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1066
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->a()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 1067
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 168
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v2, p0, Lcom/my/target/core/facades/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/d;->e:Lcom/my/target/core/net/b$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 174
    :cond_4
    :goto_0
    return-void

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/my/target/core/facades/d;->d:Lcom/my/target/core/facades/c$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/c$a;->onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V

    goto :goto_0
.end method
