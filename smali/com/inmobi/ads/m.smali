.class final Lcom/inmobi/ads/m;
.super Lcom/inmobi/ads/ap;
.source "DecorViewVisibilityTracker.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/m;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/ap$a;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ap;-><init>(Lcom/inmobi/ads/ap$a;)V

    .line 30
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/m;->d:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->b:Ljava/lang/String;

    const-string v2, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v1, Lcom/inmobi/ads/m$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/m$1;-><init>(Lcom/inmobi/ads/m;)V

    iput-object v1, p0, Lcom/inmobi/ads/m;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 45
    iget-object v1, p0, Lcom/inmobi/ads/m;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/m;->b:Ljava/lang/String;

    const-string v2, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/m;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/inmobi/ads/m;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x64

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/inmobi/ads/m;->j()V

    .line 62
    invoke-super {p0}, Lcom/inmobi/ads/ap;->c()V

    .line 64
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/inmobi/ads/m;->i()V

    .line 72
    invoke-super {p0}, Lcom/inmobi/ads/ap;->d()V

    .line 74
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/inmobi/ads/m;->j()V

    .line 110
    invoke-super {p0}, Lcom/inmobi/ads/ap;->e()V

    .line 111
    return-void
.end method
