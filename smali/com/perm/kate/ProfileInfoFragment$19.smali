.class Lcom/perm/kate/ProfileInfoFragment$19;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 954
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 937
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 938
    check-cast p1, Ljava/lang/Long;

    .line 939
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 940
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 941
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 942
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 943
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$1900(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 944
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 945
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const v0, 0x7f0f0564

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 946
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1, v1}, Lcom/perm/kate/ProfileInfoFragment;->access$2002(Lcom/perm/kate/ProfileInfoFragment;Z)Z

    .line 947
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$19;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1, v1}, Lcom/perm/kate/ProfileInfoFragment;->access$2100(Lcom/perm/kate/ProfileInfoFragment;I)V

    :cond_1
    :goto_0
    return-void
.end method
