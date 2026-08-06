.class final Lcom/perm/utils/FriendsListsHelper$7;
.super Ljava/lang/Thread;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback_friendsLists:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$7;->val$callback_friendsLists:Lcom/perm/kate/session/Callback;

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$7;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/utils/FriendsListsHelper$7;->val$callback_friendsLists:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/utils/FriendsListsHelper$7;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 184
    return-void
.end method
