.class Lcom/yandex/mobile/ads/t;
.super Lcom/yandex/mobile/ads/au;
.source "SourceFile"


# instance fields
.field private h:Lcom/yandex/mobile/ads/InternalAdView;

.field private k:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/InternalAdView;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yandex/mobile/ads/r;->a:Lcom/yandex/mobile/ads/r;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/au;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 85
    new-instance v0, Lcom/yandex/mobile/ads/t$3;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/t$3;-><init>(Lcom/yandex/mobile/ads/t;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/t;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 32
    iput-object p2, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    .line 33
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/t;->c()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/t;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/t;Lcom/yandex/mobile/ads/InternalAdView;Lcom/yandex/mobile/ads/HtmlAdWebView;)V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/HtmlAdWebView;->h()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/AdSize;->a()Lcom/yandex/mobile/ads/v$a;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/v$a;->a:Lcom/yandex/mobile/ads/v$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/yandex/mobile/ads/HtmlAdWebView;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yandex/mobile/ads/HtmlAdWebView;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/InternalAdView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/t$2;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/t$2;-><init>(Lcom/yandex/mobile/ads/InternalAdView;Lcom/yandex/mobile/ads/HtmlAdWebView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/t;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/t;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/t;->d()Lcom/yandex/mobile/ads/InternalAdView;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/InternalAdView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 113
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/InternalAdView;->getChildCount()I

    move-result v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sub-int v4, v2, v0

    .line 116
    if-lez v4, :cond_4

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 120
    :goto_1
    if-ge v2, v4, :cond_2

    .line 121
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/InternalAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    instance-of v6, v0, Lcom/yandex/mobile/ads/z;

    if-eqz v6, :cond_0

    .line 123
    check-cast v0, Lcom/yandex/mobile/ads/z;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v3, v1, v4}, Lcom/yandex/mobile/ads/InternalAdView;->removeViews(II)V

    .line 131
    :goto_2
    if-ge v1, v4, :cond_3

    .line 132
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/z;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/z;->e()V

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 135
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 138
    :cond_4
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/yandex/mobile/ads/g;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/yandex/mobile/ads/u;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/u;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/t;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/HtmlAdWebView;

    .line 146
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/HtmlAdWebView;->h()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/t;->b(Lcom/yandex/mobile/ads/AdSize;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/InternalAdView;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/t;->a(Lcom/yandex/mobile/ads/HtmlAdWebView;)V

    .line 149
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/au;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 151
    :cond_0
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/HtmlAdWebView;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/t$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/t$1;-><init>(Lcom/yandex/mobile/ads/t;Lcom/yandex/mobile/ads/HtmlAdWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method a(I)Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/InternalAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/view/View;I)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/yandex/mobile/ads/AdSize;)Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/AdSize;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/yandex/mobile/ads/t;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/AdSize;->a(Landroid/content/Context;)I

    move-result v1

    .line 211
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/InternalAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/InternalAdView;->setVerticalScrollBarEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/InternalAdView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/InternalAdView;->setBackgroundColor(I)V

    .line 45
    return-void
.end method

.method d()Lcom/yandex/mobile/ads/InternalAdView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/k;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/InternalAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/yandex/mobile/ads/t;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/t;->L()Lcom/yandex/mobile/ads/n;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n;->b()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/t;->b(Lcom/yandex/mobile/ads/AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/yandex/mobile/ads/au;->h()V

    .line 189
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/t;->c(Z)V

    .line 191
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/InternalAdView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/view/View;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/t;->h:Lcom/yandex/mobile/ads/InternalAdView;

    .line 195
    :cond_0
    return-void
.end method

.method i()Lcom/yandex/mobile/ads/HtmlAdWebView;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Lcom/yandex/mobile/ads/HtmlAdWebView;

    iget-object v1, p0, Lcom/yandex/mobile/ads/t;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/t;->f:Lcom/yandex/mobile/ads/n;

    iget-object v3, p0, Lcom/yandex/mobile/ads/t;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/e;->b()Lcom/yandex/mobile/ads/v;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/HtmlAdWebView;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/v;)V

    return-object v0
.end method
