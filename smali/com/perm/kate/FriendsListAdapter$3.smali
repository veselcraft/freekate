.class Lcom/perm/kate/FriendsListAdapter$3;
.super Ljava/lang/Thread;
.source "FriendsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsListAdapter;->addFriend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;

.field final synthetic val$uid_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$3;->this$0:Lcom/perm/kate/FriendsListAdapter;

    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter$3;->val$uid_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 221
    iget-object v4, p0, Lcom/perm/kate/FriendsListAdapter$3;->val$uid_str:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 222
    .local v0, "friend_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/FriendsListAdapter$3;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v6}, Lcom/perm/kate/FriendsListAdapter;->access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v7, v6}, Lcom/perm/kate/session/Session;->addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 223
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 224
    .local v2, "owner_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    .line 225
    return-void
.end method
