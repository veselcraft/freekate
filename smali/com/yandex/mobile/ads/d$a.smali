.class final Lcom/yandex/mobile/ads/d$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/mobile/ads/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/yandex/mobile/ads/d;->a(Ljava/lang/ref/WeakReference;)Lcom/yandex/mobile/ads/d$c;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/d$c;->a(Landroid/webkit/WebView;I)V

    .line 84
    :cond_0
    return-void
.end method
