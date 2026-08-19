.class Lcom/perm/kate/VideoFragment$14;
.super Lcom/perm/kate/session/Callback;
.source "VideoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$14;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 586
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 587
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$14;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$14;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 577
    check-cast p1, Ljava/lang/String;

    const-string v0, "1"

    .line 578
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$14;->this$0:Lcom/perm/kate/VideoFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 580
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$14;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1}, Lcom/perm/kate/VideoFragment;->refreshOnUiThread()V

    :cond_0
    return-void
.end method
