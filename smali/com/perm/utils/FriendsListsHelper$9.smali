.class Lcom/perm/utils/FriendsListsHelper$9;
.super Ljava/lang/Thread;
.source "FriendsListsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:Ljava/util/ArrayList;

.field final synthetic val$save_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$user_id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$list_ids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$save_callback:Lcom/perm/kate/session/Callback;

    iput-object p4, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 207
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$list_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$save_callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->friendsEdit(JLjava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
