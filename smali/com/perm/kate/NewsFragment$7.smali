.class Lcom/perm/kate/NewsFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 461
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 462
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 463
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 421
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Newsfeed;

    .line 426
    .local v0, "ns":Lcom/perm/kate/api/Newsfeed;
    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 427
    sget v1, Lcom/perm/kate/NewsFragment;->count:I

    const/16 v2, 0x50

    if-ge v1, v2, :cond_1

    .line 429
    sget v1, Lcom/perm/kate/NewsFragment;->count:I

    add-int/lit8 v1, v1, 0xa

    sput v1, Lcom/perm/kate/NewsFragment;->count:I

    .line 430
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1}, Lcom/perm/kate/NewsFragment;->access$700(Lcom/perm/kate/NewsFragment;)V

    .line 456
    :goto_0
    return-void

    .line 435
    :cond_0
    sget v1, Lcom/perm/kate/NewsFragment;->default_count:I

    sput v1, Lcom/perm/kate/NewsFragment;->count:I

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v2, v0, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    .line 438
    const-string v1, "NewsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v3, v3, Lcom/perm/kate/NewsFragment;->from:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v2, v2, Lcom/perm/kate/NewsFragment;->account_id:J

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget v4, v4, Lcom/perm/kate/NewsFragment;->type:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 441
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/NewsFragment$7$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/NewsFragment$7$1;-><init>(Lcom/perm/kate/NewsFragment$7;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    goto :goto_0
.end method
