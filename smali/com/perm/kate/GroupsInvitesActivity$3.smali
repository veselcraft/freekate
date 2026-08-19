.class Lcom/perm/kate/GroupsInvitesActivity$3;
.super Ljava/lang/Object;
.source "GroupsInvitesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsInvitesActivity;->requeryOnUiThread(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsInvitesActivity;

.field final synthetic val$groups:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->val$groups:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->val$groups:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupsInvitesActivity;->access$200(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
