.class Lcom/yandex/mobile/ads/InternalAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    .line 42
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->b(I)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/yandex/mobile/ads/t;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/yandex/mobile/ads/t;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/t;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/InternalAdView;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->F()V

    .line 125
    :cond_0
    return-void
.end method

.method public getAdEventListener()Lcom/yandex/mobile/ads/AdEventListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->B()Lcom/yandex/mobile/ads/AdEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/yandex/mobile/ads/AdSize;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->C()Lcom/yandex/mobile/ads/v;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/AdSize;

    return-object v0
.end method

.method public getBlockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1
    .param p1, "adRequest"    # Lcom/yandex/mobile/ads/AdRequest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->a(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 53
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {}, Lcom/yandex/mobile/ads/utils/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yandex/metrica/p;->rolu(Landroid/content/Context;Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/aa;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->H()V

    .line 161
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/aa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/InternalAdView;->setVisibility(I)V

    .line 210
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    return-void

    .line 209
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDetachedFromWindow(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {}, Lcom/yandex/mobile/ads/utils/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yandex/metrica/p;->urolu(Landroid/content/Context;Ljava/lang/Object;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Lcom/yandex/mobile/ads/aa;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->I()V

    .line 176
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "viewVisibility"    # I

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged(), changedView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewVisibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    if-ne p0, p1, :cond_0

    .line 194
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/InternalAdView;->a(I)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "windowVisibility"    # I

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged(), windowVisibility = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.getVisibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/InternalAdView;->a(I)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V
    .locals 1
    .param p1, "adEventListener"    # Lcom/yandex/mobile/ads/AdEventListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->a(Lcom/yandex/mobile/ads/AdEventListener;)V

    .line 63
    return-void
.end method

.method public setAdSize(Lcom/yandex/mobile/ads/AdSize;)V
    .locals 1
    .param p1, "adSize"    # Lcom/yandex/mobile/ads/AdSize;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->a(Lcom/yandex/mobile/ads/v;)V

    .line 91
    return-void
.end method

.method public setAutoRefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->b(Z)V

    .line 82
    return-void
.end method

.method public setBlockId(Ljava/lang/String;)V
    .locals 1
    .param p1, "blockId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->b(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public shouldOpenLinksInApp(Z)V
    .locals 1
    .param p1, "shouldOpenLinksInApp"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yandex/mobile/ads/InternalAdView;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/t;->a(Z)V

    .line 146
    return-void
.end method
