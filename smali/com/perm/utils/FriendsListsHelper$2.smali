.class final Lcom/perm/utils/FriendsListsHelper$2;
.super Ljava/lang/Thread;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const-string v2, "first_name"

    iget-object v3, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/utils/FriendsListsHelper$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 51
    return-void
.end method
