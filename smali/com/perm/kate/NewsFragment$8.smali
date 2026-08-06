.class Lcom/perm/kate/NewsFragment$8;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 494
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget v0, v0, Lcom/perm/kate/NewsFragment;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 497
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v5, v4, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v6, v4, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v7, v4, Lcom/perm/kate/NewsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    move-object v4, v1

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 499
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v5, v4, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v6, v4, Lcom/perm/kate/NewsFragment;->source_ids:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v7, v4, Lcom/perm/kate/NewsFragment;->filter:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v8, v4, Lcom/perm/kate/NewsFragment;->max_photos:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v9, v4, Lcom/perm/kate/NewsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$8;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object v4, v1

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
