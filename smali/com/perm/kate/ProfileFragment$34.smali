.class Lcom/perm/kate/ProfileFragment$34;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 1558
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1559
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 1542
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1543
    check-cast p1, Ljava/lang/Long;

    .line 1544
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1545
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1546
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 1547
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 1548
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$3800(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 1549
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 1550
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    const v0, 0x7f0f0564

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 1551
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1, v1}, Lcom/perm/kate/ProfileFragment;->access$3902(Lcom/perm/kate/ProfileFragment;Z)Z

    .line 1552
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$34;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1, v1}, Lcom/perm/kate/ProfileFragment;->access$4000(Lcom/perm/kate/ProfileFragment;I)V

    :cond_1
    :goto_0
    return-void
.end method
