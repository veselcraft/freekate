.class public abstract Lcom/yandex/mobile/ads/nativeads/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/yandex/mobile/ads/as;

.field private final b:Lcom/yandex/mobile/ads/nativeads/a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/at;->b:Lcom/yandex/mobile/ads/nativeads/a;

    .line 25
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/yandex/mobile/ads/nativeads/c;Lcom/yandex/mobile/ads/nativeads/i;)V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/o;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/at;->b:Lcom/yandex/mobile/ads/nativeads/a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/at;->a:Lcom/yandex/mobile/ads/as;

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/yandex/mobile/ads/nativeads/o;-><init>(Lcom/yandex/mobile/ads/nativeads/c;Lcom/yandex/mobile/ads/nativeads/i;Lcom/yandex/mobile/ads/nativeads/a;Lcom/yandex/mobile/ads/as;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/p;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/nativeads/p;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    :cond_0
    return-void
.end method

.method abstract a(Lcom/yandex/mobile/ads/nativeads/ac;)V
.end method
