.class Lcom/perm/kate/AudioFragment$4;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 170
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$200(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$200(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v4}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/perm/kate/session/Session;->getAudioRecommendations(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v4}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lcom/perm/kate/session/Session;->getAudioRecommendations(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x3

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 175
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$300(Lcom/perm/kate/AudioFragment;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v4}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/perm/kate/session/Session;->getAudioPopular(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 178
    .local v3, "album_id_param":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v0, v0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 179
    const/4 v3, 0x0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 181
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v5, v4, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v4}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 183
    :cond_4
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v9, v0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$4;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object v5, v2

    move-object v7, v3

    move-object v8, v2

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
