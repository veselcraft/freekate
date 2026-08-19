.class Lcom/perm/kate/MessageThreadFragment$30;
.super Landroid/content/BroadcastReceiver;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1848
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1851
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1854
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object p2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    .line 1855
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1856
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object p2

    iput-object p1, p2, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    .line 1857
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1858
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1860
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    .line 1862
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$30;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V

    return-void
.end method
