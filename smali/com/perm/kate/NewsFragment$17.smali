.class Lcom/perm/kate/NewsFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->ignoreItem(Ljava/lang/String;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    iput-wide p3, p0, Lcom/perm/kate/NewsFragment$17;->val$_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 826
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 827
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 828
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 815
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, v6}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 816
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 817
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 818
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment$17;->val$_id:J

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v4, v4, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteNewsItem(JJ)Z

    .line 819
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, v6}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 820
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    const v2, 0x7f0704bc

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewsFragment;->displayToast(I)V

    .line 822
    :cond_0
    return-void
.end method
