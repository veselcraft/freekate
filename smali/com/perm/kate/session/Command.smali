.class abstract Lcom/perm/kate/session/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field public activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/perm/kate/session/Callback;

.field public captcha_key:Ljava/lang/String;

.field public captcha_sid:Ljava/lang/String;

.field public recursion_count:I

.field public res:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/session/Command;->recursion_count:I

    .line 15
    iput-object p1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    .line 16
    if-eqz p2, :cond_0

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public reportError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    goto :goto_0
.end method

.method public reportSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1, p1}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/session/Command;->callback:Lcom/perm/kate/session/Callback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
