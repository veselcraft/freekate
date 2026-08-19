.class Lcom/perm/kate/AudioFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 702
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 692
    check-cast p1, Ljava/lang/Integer;

    .line 693
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, p1, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 694
    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$1800(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :goto_0
    return-void
.end method
