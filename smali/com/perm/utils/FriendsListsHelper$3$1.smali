.class Lcom/perm/utils/FriendsListsHelper$3$1;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper$3;->ready()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/FriendsListsHelper$3;


# direct methods
.method constructor <init>(Lcom/perm/utils/FriendsListsHelper$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/FriendsListsHelper$3;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$3$1;->this$0:Lcom/perm/utils/FriendsListsHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$3$1;->this$0:Lcom/perm/utils/FriendsListsHelper$3;

    iget-object v0, v0, Lcom/perm/utils/FriendsListsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$3$1;->this$0:Lcom/perm/utils/FriendsListsHelper$3;

    iget-object v1, v1, Lcom/perm/utils/FriendsListsHelper$3;->val$user_id:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/utils/FriendsListsHelper;->access$000(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 115
    return-void
.end method
