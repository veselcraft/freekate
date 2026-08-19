.class Lcom/perm/kate/FriendsFragment$18;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$18;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p2, p0, Lcom/perm/kate/FriendsFragment$18;->val$friends:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$18;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$18;->val$friends:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/FriendsFragment;->access$2000(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Z)V

    return-void
.end method
