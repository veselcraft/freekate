.class public abstract Lcom/yandex/mobile/ads/nativeads/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/j;
.implements Lcom/yandex/mobile/ads/nativeads/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/n;

.field private final c:Lcom/yandex/mobile/ads/e;

.field private final d:Lcom/yandex/mobile/ads/i;

.field private final e:Lcom/yandex/mobile/ads/background/a;

.field private final f:Lcom/yandex/mobile/ads/a;

.field private g:Lcom/yandex/mobile/ads/nativeads/b;

.field private h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

.field private i:Lcom/yandex/mobile/ads/report/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/e;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/ap;->b:Lcom/yandex/mobile/ads/n;

    .line 48
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/ap;->c:Lcom/yandex/mobile/ads/e;

    .line 50
    new-instance v0, Lcom/yandex/mobile/ads/i;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/i;-><init>(Lcom/yandex/mobile/ads/j;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->d:Lcom/yandex/mobile/ads/i;

    .line 51
    new-instance v0, Lcom/yandex/mobile/ads/a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/mobile/ads/background/b;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/background/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->e:Lcom/yandex/mobile/ads/background/a;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/ap;)Lcom/yandex/mobile/ads/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/ap;)Lcom/yandex/mobile/ads/background/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->e:Lcom/yandex/mobile/ads/background/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/e;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->c:Lcom/yandex/mobile/ads/e;

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/report/b$a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->i:Lcom/yandex/mobile/ads/report/b$a;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ap;->b:Lcom/yandex/mobile/ads/n;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->c:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/e;->i()Z

    move-result v3

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->d:Lcom/yandex/mobile/ads/i;

    .line 116
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/i;->a()Lcom/yandex/mobile/ads/o;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/nativeads/ap;->g:Lcom/yandex/mobile/ads/nativeads/b;

    iget-object v6, p0, Lcom/yandex/mobile/ads/nativeads/ap;->i:Lcom/yandex/mobile/ads/report/b$a;

    move-object v1, p1

    .line 115
    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/n;ZLandroid/os/ResultReceiver;Lcom/yandex/mobile/ads/nativeads/b;Lcom/yandex/mobile/ads/report/b$a;)V

    .line 117
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->e:Lcom/yandex/mobile/ads/background/a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/background/a;->a(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;->onAdClosed()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    sget-object v1, Lcom/yandex/mobile/ads/a$a;->b:Lcom/yandex/mobile/ads/a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/a;->b(Lcom/yandex/mobile/ads/a$a;)V

    .line 83
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;->onAdLeftApplication()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->e:Lcom/yandex/mobile/ads/background/a;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/background/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    sget-object v1, Lcom/yandex/mobile/ads/a$a;->a:Lcom/yandex/mobile/ads/a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/a;->a(Lcom/yandex/mobile/ads/a$a;)V

    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->e:Lcom/yandex/mobile/ads/background/a;

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/ap$1;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/nativeads/ap$1;-><init>(Lcom/yandex/mobile/ads/nativeads/ap;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/background/a;->a(Lcom/yandex/mobile/ads/background/d;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    sget-object v1, Lcom/yandex/mobile/ads/a$a;->a:Lcom/yandex/mobile/ads/a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/a;->c(Lcom/yandex/mobile/ads/a$a;)V

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;->onAdOpened()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->f:Lcom/yandex/mobile/ads/a;

    sget-object v1, Lcom/yandex/mobile/ads/a$a;->b:Lcom/yandex/mobile/ads/a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/a;->a(Lcom/yandex/mobile/ads/a$a;)V

    .line 112
    return-void
.end method

.method public setAdEventListener(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V
    .locals 0
    .param p1, "adEventListener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ap;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    .line 57
    return-void
.end method

.method public shouldOpenLinksInApp(Z)V
    .locals 1
    .param p1, "shouldOpenLinksInApp"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap;->c:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/e;->a(Z)V

    .line 66
    return-void
.end method
