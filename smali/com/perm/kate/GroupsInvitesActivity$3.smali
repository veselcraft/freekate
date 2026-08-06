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
    .param p1, "this$0"    # Lcom/perm/kate/GroupsInvitesActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->val$groups:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->this$0:Lcom/perm/kate/GroupsInvitesActivity;

    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesActivity$3;->val$groups:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/perm/kate/GroupsInvitesActivity;->access$200(Lcom/perm/kate/GroupsInvitesActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
