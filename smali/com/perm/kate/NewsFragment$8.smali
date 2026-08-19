.class Lcom/perm/kate/NewsFragment$8;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 492
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget v2, v1, Lcom/perm/kate/NewsFragment;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 495
    sget v3, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v3, v3

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    iget-object v7, v1, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v8, v1, Lcom/perm/kate/NewsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 497
    sget v3, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v3, v3

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    iget-object v7, v1, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    iget-object v8, v1, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    iget-object v9, v1, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v10, v1, Lcom/perm/kate/NewsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 498
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->setOffline()V

    :goto_0
    return-void
.end method
