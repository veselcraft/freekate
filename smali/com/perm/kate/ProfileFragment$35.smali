.class Lcom/perm/kate/ProfileFragment$35;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1575
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 1566
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1567
    check-cast p1, Ljava/lang/Long;

    .line 1568
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 1569
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$35;->this$0:Lcom/perm/kate/ProfileFragment;

    const v0, 0x7f0f00f2

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_0
    return-void
.end method
