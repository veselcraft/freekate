.class Lcom/perm/kate/NewsFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;J)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    iput-wide p3, p0, Lcom/perm/kate/NewsFragment$17;->val$_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 855
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 856
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 844
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 845
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 847
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/NewsFragment$17;->val$_id:J

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v4, v0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteNewsItem(JJ)Z

    .line 848
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 849
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$17;->this$0:Lcom/perm/kate/NewsFragment;

    const v0, 0x7f0f0542

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_0
    return-void
.end method
