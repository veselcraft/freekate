.class Lcom/perm/utils/FriendsListsHelper$2;
.super Ljava/lang/Thread;
.source "FriendsListsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v2, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    const-string v4, "first_name"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
