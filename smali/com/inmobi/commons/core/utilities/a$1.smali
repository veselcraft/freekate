.class Lcom/inmobi/commons/core/utilities/a$1;
.super Ljava/lang/Object;
.source "ApplicationFocusChangeObserver.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/core/utilities/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/utilities/a;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/utilities/a;)V
    .locals 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/inmobi/commons/core/utilities/a$1;->a:Lcom/inmobi/commons/core/utilities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/inmobi/commons/core/utilities/a$a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->d()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/a$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onActivityPaused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    aget-object v0, p3, v3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/utilities/a$1;->a(Landroid/app/Activity;)V

    .line 113
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onActivityResumed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    aget-object v0, p3, v3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/utilities/a$1;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
