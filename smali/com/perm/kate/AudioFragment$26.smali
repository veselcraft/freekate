.class Lcom/perm/kate/AudioFragment$26;
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
    .line 836
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 852
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 853
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 854
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2800(Lcom/perm/kate/AudioFragment;)V

    .line 855
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    move-object v6, p1

    .line 841
    check-cast v6, Ljava/lang/Boolean;

    .line 843
    .local v6, "res":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAudiosInList(JJ)Z

    .line 845
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v4}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAudiosInList(Ljava/util/ArrayList;JJ)V

    .line 848
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2800(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0
.end method
