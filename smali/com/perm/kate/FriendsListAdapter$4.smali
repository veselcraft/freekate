.class Lcom/perm/kate/FriendsListAdapter$4;
.super Ljava/lang/Thread;
.source "FriendsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsListAdapter;->deleteFriend(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;

.field final synthetic val$uid_str:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$4;->this$0:Lcom/perm/kate/FriendsListAdapter;

    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter$4;->val$uid_str:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 233
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FriendsListAdapter$4;->val$uid_str:Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/FriendsListAdapter$4;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v3}, Lcom/perm/kate/FriendsListAdapter;->access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 234
    return-void
.end method
