.class Lcom/perm/kate/FavePostsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "FavePostsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$wall_owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->this$0:Lcom/perm/kate/FavePostsFragment;

    iput-object p3, p0, Lcom/perm/kate/FavePostsFragment$6;->val$post_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/FavePostsFragment$6;->val$wall_owner_id:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 268
    check-cast p1, Ljava/lang/Boolean;

    .line 269
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v3, p1, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->val$post_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->val$wall_owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->deleteFavePost(JZJJ)Z

    .line 272
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$6;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    return-void
.end method
