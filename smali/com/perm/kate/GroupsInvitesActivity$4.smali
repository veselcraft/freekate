.class Lcom/perm/kate/GroupsInvitesActivity$4;
.super Ljava/lang/Object;
.source "GroupsInvitesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
.method constructor <init>(Lcom/perm/kate/GroupsInvitesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsInvitesActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 100
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 101
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const-class v3, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    const-string v2, "com.perm.kate.group_id"

    iget-wide v4, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/GroupsInvitesActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
