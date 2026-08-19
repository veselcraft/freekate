.class public abstract Lcom/perm/kate/session/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/session/Callback$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/session/Callback$1;-><init>(Lcom/perm/kate/session/Callback;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract ready(Ljava/lang/Object;)V
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/session/Callback;->activity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
