.class Lcom/perm/kate/AudioFragment$18;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 668
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 669
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 662
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1400(Lcom/perm/kate/AudioFragment;)V

    .line 663
    return-void
.end method
