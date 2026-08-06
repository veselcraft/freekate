.class Lcom/perm/kate/AudioFragment$14;
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
    .line 560
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 573
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 574
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 563
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 564
    .local v0, "code":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1400(Lcom/perm/kate/AudioFragment;)V

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    goto :goto_0
.end method
