.class Lcom/perm/kate/MessageThreadFragment$19;
.super Landroid/content/BroadcastReceiver;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1083
    :goto_0
    return-void

    .line 1074
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 1075
    .local v0, "me":Lcom/perm/kate/api/User;
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v2

    iput-object v0, v2, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    .line 1077
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1078
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v3}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 1079
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_2

    .line 1080
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    .line 1082
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0
.end method
