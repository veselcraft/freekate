.class Lcom/perm/kate/FriendsFragment$18;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->diplayListInUiThread(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$friends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$18;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-object p2, p0, Lcom/perm/kate/FriendsFragment$18;->val$friends:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$18;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$18;->val$friends:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/FriendsFragment;->access$2100(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Z)V

    .line 713
    return-void
.end method
