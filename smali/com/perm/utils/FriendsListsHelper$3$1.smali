.class Lcom/perm/utils/FriendsListsHelper$3$1;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/utils/FriendsListsHelper$3;


# direct methods
.method constructor <init>(Lcom/perm/utils/FriendsListsHelper$3;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$3$1;->this$0:Lcom/perm/utils/FriendsListsHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$3$1;->this$0:Lcom/perm/utils/FriendsListsHelper$3;

    iget-object v1, v0, Lcom/perm/utils/FriendsListsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v0, v0, Lcom/perm/utils/FriendsListsHelper$3;->val$user_id:Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/perm/utils/FriendsListsHelper;->access$000(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return-void
.end method
