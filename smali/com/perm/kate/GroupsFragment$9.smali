.class Lcom/perm/kate/GroupsFragment$9;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupsFragment;->showInviteDialogMaybeInUiThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;

.field final synthetic val$user_in_kate_group:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/GroupsFragment$9;->val$user_in_kate_group:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-boolean v1, p0, Lcom/perm/kate/GroupsFragment$9;->val$user_in_kate_group:Z

    invoke-static {v0, v1}, Lcom/perm/kate/GroupsFragment;->access$2000(Lcom/perm/kate/GroupsFragment;Z)V

    .line 250
    return-void
.end method
