.class Lcom/perm/kate/AudioFragment$21;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 798
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 791
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 792
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$21;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$1800(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method
