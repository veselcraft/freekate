.class Lcom/perm/kate/GroupsFragment$6;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;

.field final synthetic val$user_in_kate_group:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$6;->this$0:Lcom/perm/kate/GroupsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/GroupsFragment$6;->val$user_in_kate_group:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$6;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-boolean v1, p0, Lcom/perm/kate/GroupsFragment$6;->val$user_in_kate_group:Z

    invoke-static {v0, v1}, Lcom/perm/kate/GroupsFragment;->access$1800(Lcom/perm/kate/GroupsFragment;Z)V

    return-void
.end method
