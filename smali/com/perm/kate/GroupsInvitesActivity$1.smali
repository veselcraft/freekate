.class Lcom/perm/kate/GroupsInvitesActivity$1;
.super Ljava/lang/Thread;
.source "GroupsInvitesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsInvitesActivity;->refreshInThread()V
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
    .line 41
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$1;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity$1;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsInvitesActivity;->showProgressBar(Z)V

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesActivity$1;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupsInvitesActivity;->access$000(Lcom/perm/kate/GroupsInvitesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesActivity$1;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/perm/kate/session/Session;->getGroupsInvites(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 46
    return-void
.end method
