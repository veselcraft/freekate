.class public Lcom/perm/utils/FriendsListsHelper;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;
    }
.end annotation


# static fields
.field private static accoundIdStr:Ljava/lang/String;

.field private static checked:Z

.field private static friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation
.end field

.field private static listsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/perm/utils/FriendsListsHelper;->saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 18
    sput-object p0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->sortFriendsListBySite()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Long;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->updateListsMap(Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    sput-object p0, Lcom/perm/utils/FriendsListsHelper;->accoundIdStr:Ljava/lang/String;

    return-object p0
.end method

.method public static checkFriendsLists(Lcom/perm/kate/BaseActivity;)V
    .locals 5
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 262
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "mid":Ljava/lang/String;
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->accoundIdStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$10;

    invoke-direct {v0, p0, v1}, Lcom/perm/utils/FriendsListsHelper$10;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 277
    .local v0, "callback_friendsLists":Lcom/perm/kate/session/Callback;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0, p0}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static checkListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 1
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "fl_callback"    # Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    .prologue
    .line 67
    sget-boolean v0, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;->ready()V

    goto :goto_0
.end method

.method private static checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 1
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 108
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$3;-><init>(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 119
    .local v0, "callback":Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;
    invoke-static {p0, v0}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    .line 120
    return-void
.end method

.method public static fillListsMap(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 58
    if-nez p0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 61
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-object v2, v0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 2
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 162
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$6;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 179
    .local v0, "callback_friendsLists":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 180
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$7;

    invoke-direct {v1, v0, p0}, Lcom/perm/utils/FriendsListsHelper$7;-><init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 185
    invoke-virtual {v1}, Lcom/perm/utils/FriendsListsHelper$7;->start()V

    .line 186
    return-void
.end method

.method public static getFriendsListName(I)Ljava/lang/String;
    .locals 4
    .param p0, "list_id"    # I

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 287
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/FriendsList;

    .line 288
    .local v0, "fl":Lcom/perm/kate/api/FriendsList;
    iget v3, v0, Lcom/perm/kate/api/FriendsList;->lid:I

    if-ne v3, p0, :cond_0

    .line 289
    iget-object v1, v0, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    .line 294
    .end local v0    # "fl":Lcom/perm/kate/api/FriendsList;
    :cond_1
    return-object v1
.end method

.method public static getFriendsLists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getListIds(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "friend_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v4, 0x0

    .line 85
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p0}, Lcom/perm/utils/FriendsListsHelper;->getStringListIds(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "ids":Ljava/lang/String;
    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "array":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 90
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "ids":Ljava/lang/String;
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v4

    .line 93
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "ids":Ljava/lang/String;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method private static getStringListIds(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .param p0, "friend_id"    # Ljava/lang/Long;

    .prologue
    .line 76
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 3
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "fl_callback"    # Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    .prologue
    const/4 v2, 0x1

    .line 31
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    .line 46
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 47
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$2;

    invoke-direct {v1, v0, p0}, Lcom/perm/utils/FriendsListsHelper$2;-><init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 52
    invoke-virtual {v1}, Lcom/perm/utils/FriendsListsHelper$2;->start()V

    .line 53
    sput-boolean v2, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    .line 54
    return-void
.end method

.method private static saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/BaseActivity;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "list_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$8;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/utils/FriendsListsHelper$8;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 203
    .local v0, "save_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 204
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$9;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/perm/utils/FriendsListsHelper$9;-><init>(Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 209
    invoke-virtual {v1}, Lcom/perm/utils/FriendsListsHelper$9;->start()V

    .line 210
    return-void
.end method

.method private static showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 12
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 123
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v6, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0701a8

    invoke-virtual {v6, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 125
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 126
    .local v1, "size":I
    new-array v11, v1, [Ljava/lang/CharSequence;

    .line 127
    .local v11, "items":[Ljava/lang/CharSequence;
    new-array v8, v1, [Z

    .line 128
    .local v8, "checked":[Z
    new-array v3, v1, [I

    .line 129
    .local v3, "list_ids":[I
    new-array v2, v1, [Z

    .line 130
    .local v2, "new_checked":[Z
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->getListIds(Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v10

    .line 131
    .local v10, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_1

    .line 132
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget-object v4, v4, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    aput-object v4, v11, v9

    .line 133
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget v4, v4, Lcom/perm/kate/api/FriendsList;->lid:I

    aput v4, v3, v9

    .line 134
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 135
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget v4, v4, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v8, v9

    .line 136
    aget-boolean v4, v8, v9

    aput-boolean v4, v2, v9

    .line 131
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v7, Lcom/perm/utils/FriendsListsHelper$4;

    invoke-direct {v7, v2}, Lcom/perm/utils/FriendsListsHelper$4;-><init>([Z)V

    .line 145
    .local v7, "check_listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    invoke-virtual {v6, v11, v8, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 146
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$5;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/FriendsListsHelper$5;-><init>(I[Z[ILcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 157
    .local v0, "ok_listener":Landroid/content/DialogInterface$OnClickListener;
    const v4, 0x7f070334

    invoke-virtual {v6, v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 159
    return-void
.end method

.method public static showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 1
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 101
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static sortFriendsListBySite()V
    .locals 8

    .prologue
    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v3, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/FriendsList;>;"
    const/4 v2, 0x5

    .line 237
    .local v2, "len":I
    new-array v4, v2, [I

    .line 238
    .local v4, "system_ids":[I
    const/4 v5, 0x0

    const/16 v6, 0x1c

    aput v6, v4, v5

    .line 239
    const/4 v5, 0x1

    const/16 v6, 0x1d

    aput v6, v4, v5

    .line 240
    const/4 v5, 0x2

    const/16 v6, 0x1b

    aput v6, v4, v5

    .line 241
    const/4 v5, 0x3

    const/16 v6, 0x19

    aput v6, v4, v5

    .line 242
    const/4 v5, 0x4

    const/16 v6, 0x1a

    aput v6, v4, v5

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 244
    sget-object v5, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/FriendsList;

    .line 245
    .local v0, "fl":Lcom/perm/kate/api/FriendsList;
    iget v6, v0, Lcom/perm/kate/api/FriendsList;->lid:I

    aget v7, v4, v1

    if-ne v6, v7, :cond_0

    .line 246
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v5, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    .end local v0    # "fl":Lcom/perm/kate/api/FriendsList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_2
    sget-object v5, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/FriendsList;

    .line 254
    .restart local v0    # "fl":Lcom/perm/kate/api/FriendsList;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    .end local v0    # "fl":Lcom/perm/kate/api/FriendsList;
    :cond_3
    sget-object v5, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 256
    sput-object v3, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    .line 257
    return-void
.end method

.method private static updateListsMap(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "user_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "list_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 216
    const-string v1, ""

    .line 217
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 218
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    goto :goto_0

    .line 222
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_2
    sget-object v2, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method
