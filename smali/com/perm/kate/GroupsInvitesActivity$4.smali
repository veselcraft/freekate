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

    .line 96
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_0

    .line 101
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 102
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 103
    iget-object p3, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const-class p4, Lcom/perm/kate/GroupActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    iget-wide p3, p1, Lcom/perm/kate/api/Group;->gid:J

    const-string p1, "com.perm.kate.group_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    iget-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$4;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
