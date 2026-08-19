.class abstract Lcom/perm/kate/session/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field public activity:Ljava/lang/ref/WeakReference;

.field private callback:Lcom/perm/kate/session/Callback;

.field public captcha_key:Ljava/lang/String;

.field public captcha_sid:Ljava/lang/String;

.field public recursion_count:I

.field public res:Ljava/lang/Object;

.field show_captcha:Z


# direct methods
.method public constructor <init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/perm/kate/session/Command;->recursion_count:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/perm/kate/session/Command;->show_captcha:Z

    .line 16
    iput-object p1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    if-eqz p2, :cond_0

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public reportError(Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method public reportSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public abstract run()V
.end method
