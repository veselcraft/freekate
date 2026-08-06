.class public final Lcom/my/target/core/facades/f;
.super Ljava/lang/Object;
.source "InterstitialSliderAppwallAd.java"

# interfaces
.implements Lcom/my/target/core/facades/c;


# instance fields
.field private final a:Lcom/my/target/core/models/sections/e;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/my/target/core/models/c;

.field private final d:Landroid/content/Context;

.field private e:Lcom/my/target/core/facades/c$a;

.field private f:Lcom/my/target/core/net/b$a;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/sections/e;Lcom/my/target/core/models/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/my/target/core/facades/f$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/facades/f$1;-><init>(Lcom/my/target/core/facades/f;)V

    iput-object v0, p0, Lcom/my/target/core/facades/f;->f:Lcom/my/target/core/net/b$a;

    .line 94
    iput-object p1, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/sections/e;

    .line 95
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/e;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    .line 96
    iput-object p2, p0, Lcom/my/target/core/facades/f;->c:Lcom/my/target/core/models/c;

    .line 97
    iput-object p3, p0, Lcom/my/target/core/facades/f;->d:Landroid/content/Context;

    .line 99
    const-string v0, "InterstitialSliderAppwallAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/facades/f;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 19
    .line 2047
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2049
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 2052
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    .line 2053
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v5

    .line 2055
    if-eqz v1, :cond_8

    .line 2057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    .line 2059
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    move v1, v0

    .line 2061
    goto :goto_1

    :cond_1
    move v0, v1

    .line 2064
    :goto_3
    if-eqz v5, :cond_2

    .line 2066
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    .line 2068
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    move v1, v0

    .line 2070
    goto :goto_4

    :cond_2
    move v1, v0

    .line 2072
    :cond_3
    if-nez v1, :cond_0

    .line 2073
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2075
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_6
    return v3

    :cond_5
    move v3, v2

    .line 19
    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/my/target/core/facades/f;)Lcom/my/target/core/facades/c$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/facades/c$a;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    .line 120
    return-void
.end method

.method public final a(Lcom/my/target/core/models/banners/d;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/my/target/core/facades/f;->c:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/my/target/core/facades/f;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/my/target/core/facades/f;->g:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDisplay(Lcom/my/target/core/facades/c;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/facades/f;->g:Z

    .line 133
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 107
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->d()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->e()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    :cond_2
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Lcom/my/target/core/models/banners/d;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/my/target/core/facades/f;->c:Lcom/my/target/core/models/c;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/my/target/core/facades/f;->c:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/f;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onClick(Lcom/my/target/core/facades/c;)V

    .line 143
    :cond_1
    return-void
.end method

.method public final c()Lcom/my/target/core/models/sections/e;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/sections/e;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, p0}, Lcom/my/target/core/facades/c$a;->onDismiss(Lcom/my/target/core/facades/c;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lcom/my/target/core/facades/f;->b:Ljava/util/ArrayList;

    .line 1175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 1179
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1180
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/nativeads/models/ImageData;

    .line 1183
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->b(Lcom/my/target/nativeads/models/ImageData;)V

    .line 1187
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1188
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/nativeads/models/ImageData;

    .line 1191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-virtual {v0, v1}, Lcom/my/target/core/models/banners/f;->c(Lcom/my/target/nativeads/models/ImageData;)V

    goto :goto_0

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/sections/e;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/e;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1198
    iget-object v0, p0, Lcom/my/target/core/facades/f;->a:Lcom/my/target/core/models/sections/e;

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/e;->k()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 1199
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 165
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/facades/f;->f:Lcom/my/target/core/net/b$a;

    invoke-virtual {v0, v2, v1, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 170
    :cond_4
    :goto_1
    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/my/target/core/facades/f;->e:Lcom/my/target/core/facades/c$a;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/core/facades/c$a;->onError(Ljava/lang/String;Lcom/my/target/core/facades/c;)V

    goto :goto_1
.end method
