.class public Lcom/yandex/mobile/ads/nativeads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/aj;


# instance fields
.field protected final a:Lcom/yandex/mobile/ads/nativeads/ae;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/yandex/mobile/ads/nativeads/ac;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;",
            "Lcom/yandex/mobile/ads/nativeads/ae;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/k;->b:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/k;->a:Lcom/yandex/mobile/ads/nativeads/ae;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/k;)Lcom/yandex/mobile/ads/nativeads/ac;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/k;->d:Lcom/yandex/mobile/ads/nativeads/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/k;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/yandex/mobile/ads/nativeads/aj$b;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/k;->d:Lcom/yandex/mobile/ads/nativeads/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/k;->b:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/aj$b;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/nativeads/aj$a;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->g:Lcom/yandex/mobile/ads/ax$a;

    .line 56
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/ai;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/k;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/yandex/mobile/ads/nativeads/ai;-><init>(Lcom/yandex/mobile/ads/ax$a;Ljava/lang/String;)V

    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->j:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->d:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/ac;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/k;->d:Lcom/yandex/mobile/ads/nativeads/ac;

    .line 40
    return-void
.end method

.method protected a(Lcom/yandex/mobile/ads/nativeads/aj$b;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/nativeads/aj$b;",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/k;->a:Lcom/yandex/mobile/ads/nativeads/ae;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/nativeads/aj$b;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/c;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/k;->d:Lcom/yandex/mobile/ads/nativeads/ac;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/nativeads/ac;->a(Lcom/yandex/mobile/ads/nativeads/c;)Lcom/yandex/mobile/ads/nativeads/ay;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/yandex/mobile/ads/nativeads/ay;->b(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/k$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/k$1;-><init>(Lcom/yandex/mobile/ads/nativeads/k;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/aj$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/k$2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/k$2;-><init>(Lcom/yandex/mobile/ads/nativeads/k;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/aj$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/k$3;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/k$3;-><init>(Lcom/yandex/mobile/ads/nativeads/k;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/aj$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/k$4;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/k$4;-><init>(Lcom/yandex/mobile/ads/nativeads/k;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/aj$b;)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/k;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 182
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
