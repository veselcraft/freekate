.class Lcom/perm/kate/AudioFragment$26;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 987
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 988
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 989
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3300(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11

    .line 975
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 976
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 979
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v1, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteAudiosInList(JJ)Z

    .line 980
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v6, p1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    iget-wide v7, p1, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/db/DataHelper;->createAudiosInList(Ljava/util/ArrayList;JJ)V

    goto :goto_0

    .line 982
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$26;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3300(Lcom/perm/kate/AudioFragment;)V

    :goto_0
    return-void
.end method
