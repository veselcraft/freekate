.class Lcom/perm/kate/FriendsListAdapter$3;
.super Ljava/lang/Thread;
.source "FriendsListAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;

.field final synthetic val$uid_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$3;->this$0:Lcom/perm/kate/FriendsListAdapter;

    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter$3;->val$uid_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter$3;->val$uid_str:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 221
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FriendsListAdapter$3;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v4}, Lcom/perm/kate/FriendsListAdapter;->access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/perm/kate/session/Session;->addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 222
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 223
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->createFriend(JJ)J

    return-void
.end method
