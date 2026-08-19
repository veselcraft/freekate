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

    .line 50
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 55
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Group;

    .line 59
    iget-object v3, v2, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 60
    iget-object v2, v2, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupsInvitesActivity;->access$100(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$2;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
