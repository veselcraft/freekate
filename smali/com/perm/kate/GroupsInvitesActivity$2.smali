.class Lcom/perm/kate/GroupsInvitesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupsInvitesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsInvitesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsInvitesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsInvitesActivity;->showProgressBar(Z)V

    .line 72
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 55
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 59
    .local v0, "g":Lcom/perm/kate/api/Group;
    iget-object v4, v0, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 60
    iget-object v4, v0, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 64
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-static {v3, v1}, Lcom/perm/kate/GroupsInvitesActivity;->access$100(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V

    .line 65
    iget-object v3, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/perm/kate/GroupsInvitesActivity;->showProgressBar(Z)V

    .line 66
    return-void
.end method
