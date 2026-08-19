.class Lcom/perm/kate/FriendsListAdapter$4;
.super Ljava/lang/Thread;
.source "FriendsListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;

.field final synthetic val$uid_str:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$4;->this$0:Lcom/perm/kate/FriendsListAdapter;

    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter$4;->val$uid_str:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 232
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FriendsListAdapter$4;->val$uid_str:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter$4;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsListAdapter;->access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
