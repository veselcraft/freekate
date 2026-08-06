.class final Lcom/inmobi/ads/ag;
.super Lcom/inmobi/ads/NativeStrandContainerLayout;
.source "NativeStrandRootContainerLayout.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandContainerLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method a()Lcom/inmobi/ads/q;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/inmobi/ads/ag;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    return-object v0
.end method

.method a(Lcom/inmobi/ads/q;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ag;->a:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method
