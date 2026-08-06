.class final Lcom/perm/utils/FriendsListsHelper$9;
.super Ljava/lang/Thread;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:Ljava/util/ArrayList;

.field final synthetic val$save_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .prologue
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
    .locals 7

    .prologue
    .line 207
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$list_ids:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$save_callback:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/utils/FriendsListsHelper$9;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->friendsEdit(JLjava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 208
    return-void
.end method
