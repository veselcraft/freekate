.class final Lcom/yandex/mobile/ads/nativeads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/GestureDetector;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private final e:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/p$3;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/p$3;-><init>(Lcom/yandex/mobile/ads/nativeads/p;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->e:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->c:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->a:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/p$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/p;->e:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/nativeads/p$1;-><init>(Lcom/yandex/mobile/ads/nativeads/p;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->b:Landroid/view/GestureDetector;

    .line 43
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/nativeads/p;->d:Z

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 69
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->d:Z

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/p;)V
    .locals 3

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/nativeads/p;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->d:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/p;Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/p;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->c:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/p$2;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/nativeads/p$2;-><init>(Lcom/yandex/mobile/ads/nativeads/p;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/p;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yandex/mobile/ads/nativeads/p;->a()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/yandex/mobile/ads/nativeads/Rating;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
