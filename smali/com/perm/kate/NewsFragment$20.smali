.class Lcom/perm/kate/NewsFragment$20;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->addBanInThread(Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 907
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 911
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 912
    .local v0, "from_id":J
    :goto_0
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v6, v5, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteNewsFromOwnerId(JJ)V

    .line 913
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 915
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v2, "gids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 918
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 920
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_1
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v5}, Lcom/perm/kate/NewsFragment;->access$1300(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v6}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/perm/kate/session/Session;->addBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 922
    return-void

    .line 911
    .end local v0    # "from_id":J
    .end local v2    # "gids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v0, v4

    goto :goto_0
.end method
