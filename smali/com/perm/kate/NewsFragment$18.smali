.class Lcom/perm/kate/NewsFragment$18;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$ignore_item_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$item_id:J

.field final synthetic val$post_owner_id:J

.field final synthetic val$post_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/lang/String;Ljava/lang/String;JJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$18;->val$ad_data:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$18;->val$post_type:Ljava/lang/String;

    iput-wide p4, p0, Lcom/perm/kate/NewsFragment$18;->val$post_owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/NewsFragment$18;->val$item_id:J

    iput-object p8, p0, Lcom/perm/kate/NewsFragment$18;->val$ignore_item_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 863
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$18;->val$ad_data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$18;->val$post_type:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perm/kate/NewsFragment;->access$1300(Lcom/perm/kate/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/perm/kate/NewsFragment$18;->val$post_owner_id:J

    iget-wide v5, p0, Lcom/perm/kate/NewsFragment$18;->val$item_id:J

    iget-object v7, p0, Lcom/perm/kate/NewsFragment$18;->val$ignore_item_callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->ignoreItem(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 866
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$18;->val$ad_data:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$18;->val$ignore_item_callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$18;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->ignoreAd(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
