.class public final Lcom/my/target/core/facades/e;
.super Ljava/lang/Object;
.source "InterstitialPromoAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c;


# instance fields
.field private a:Lcom/my/target/core/models/banners/g;

.field private b:Lcom/my/target/core/models/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/my/target/core/facades/c$a;

.field private e:Lcom/my/target/core/net/b$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/banners/g;Lcom/my/target/core/models/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/my/target/core/facades/e$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/e$1;-><init>(Lcom/my/target/core/facades/e;)V

    iput-object v0, p0, Lcom/my/target/core/facades/e;->e:Lcom/my/target/core/net/b$a;

    .line 34
    iput-object p1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    .line 35
    iput-object p2, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    .line 36
    iput-object p3, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    .line 37
    const-string v0, "InterstitialPromoAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/facades/e;)Lcom/my/target/core/facades/c$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/facades/c$a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    .line 50
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDisplay(Lcom/my/target/core/facades/c;)V

    .line 59
    :cond_1
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    .line 158
    :cond_0
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/m;Ljava/util/Set;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/my/target/core/models/banners/m;",
            "Ljava/util/Set",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/my/target/core/models/c;->a(Ljava/util/Set;FLandroid/content/Context;)V

    .line 150
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/my/target/core/models/banners/g;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    return-object v0
.end method

.method public final b(Lcom/my/target/core/models/banners/d;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/my/target/core/facades/e;->b:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onClick(Lcom/my/target/core/facades/c;)V

    .line 69
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onVideoCompleted(Lcom/my/target/core/facades/c;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDismiss(Lcom/my/target/core/facades/c;)V

    .line 174
    :cond_0
    return-void
.end method

.method public final load()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->j()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->j()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    invoke-virtual {v1}, Lcom/my/target/core/models/banners/m;->m()Ljava/util/List;

    move-result-object v1

    .line 91
    const/16 v2, 0x168

    invoke-static {v1, v2}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->b()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->b()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->c()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 103
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->c()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 108
    iget-object v1, p0, Lcom/my/target/core/facades/e;->a:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/my/target/core/facades/e;->d:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onLoad(Lcom/my/target/core/facades/c;)V

    .line 121
    :cond_7
    :goto_0
    return-void

    .line 119
    :cond_8
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/facades/e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/e;->e:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    goto :goto_0
.end method
