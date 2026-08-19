.class Lcom/perm/kate/AudioClickHelper$9;
.super Lcom/perm/kate/session/Callback;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 539
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 540
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 528
    check-cast p1, Ljava/lang/String;

    .line 529
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v0, Lcom/perm/kate/AudioClickHelper$9$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioClickHelper$9$1;-><init>(Lcom/perm/kate/AudioClickHelper$9;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
