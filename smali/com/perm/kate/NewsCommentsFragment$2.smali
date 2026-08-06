.class Lcom/perm/kate/NewsCommentsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "NewsCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsCommentsFragment;->showProgressBar(Z)V

    .line 102
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Newsfeed;

    .line 91
    .local v0, "ns":Lcom/perm/kate/api/Newsfeed;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v2, v2, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 92
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v2, v2, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 93
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewsCommentsFragment;->showProgressBar(Z)V

    .line 94
    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$2;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-static {v1}, Lcom/perm/kate/NewsCommentsFragment;->access$000(Lcom/perm/kate/NewsCommentsFragment;)V

    .line 96
    :cond_0
    return-void
.end method
