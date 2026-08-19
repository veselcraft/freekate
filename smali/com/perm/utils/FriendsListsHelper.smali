.class public abstract Lcom/perm/utils/FriendsListsHelper;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"


# static fields
.field private static accoundIdStr:Ljava/lang/String;

.field private static checked:Z

.field private static friendsList:Ljava/util/ArrayList;

.field private static listsMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/perm/utils/FriendsListsHelper;->saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 18
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    sput-object p0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 18
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->sortFriendsListBySite()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->updateListsMap(Ljava/lang/Long;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    sput-object p0, Lcom/perm/utils/FriendsListsHelper;->accoundIdStr:Ljava/lang/String;

    return-object p0
.end method

.method public static checkFriendsLists(Lcom/perm/kate/BaseActivity;)V
    .locals 4

    .line 261
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->accoundIdStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 264
    :cond_0
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$10;

    invoke-direct {v1, p0, v0}, Lcom/perm/utils/FriendsListsHelper$10;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private static checkListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-interface {p1}, Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;->ready()V

    :cond_1
    return-void
.end method

.method private static checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$3;-><init>(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    .line 119
    invoke-static {p0, v0}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    return-void
.end method

.method public static fillListsMap(Ljava/util/ArrayList;)V
    .locals 4

    .line 57
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 61
    iget-object v1, v0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$6;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 180
    new-instance p1, Lcom/perm/utils/FriendsListsHelper$7;

    invoke-direct {p1, v0, p0}, Lcom/perm/utils/FriendsListsHelper$7;-><init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getFriendsListName(I)Ljava/lang/String;
    .locals 3

    .line 285
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/FriendsList;

    .line 287
    iget v2, v1, Lcom/perm/kate/api/FriendsList;->lid:I

    if-ne v2, p0, :cond_0

    .line 288
    iget-object p0, v1, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getFriendsLists()Ljava/util/ArrayList;
    .locals 1

    .line 280
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getListIds(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-static {p0}, Lcom/perm/utils/FriendsListsHelper;->getStringListIds(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ","

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 89
    :goto_0
    :try_start_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 90
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 94
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static getStringListIds(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 2

    .line 31
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/utils/FriendsListsHelper$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 47
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$2;

    invoke-direct {v1, v0, p0}, Lcom/perm/utils/FriendsListsHelper$2;-><init>(Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    sput-boolean p1, Lcom/perm/utils/FriendsListsHelper;->checked:Z

    return-void
.end method

.method private static saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 2

    .line 189
    new-instance v0, Lcom/perm/utils/FriendsListsHelper$8;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/utils/FriendsListsHelper$8;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 204
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$9;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/perm/utils/FriendsListsHelper$9;-><init>(Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V

    .line 209
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static showFriendsListsDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 9

    .line 123
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0204

    .line 124
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 126
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 127
    new-array v2, v3, [Z

    .line 128
    new-array v5, v3, [I

    .line 129
    new-array v4, v3, [Z

    .line 130
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->getListIds(Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    .line 132
    sget-object v8, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/FriendsList;

    iget-object v8, v8, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    aput-object v8, v1, v7

    .line 133
    sget-object v8, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/FriendsList;

    iget v8, v8, Lcom/perm/kate/api/FriendsList;->lid:I

    aput v8, v5, v7

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 135
    sget-object v8, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/FriendsList;

    iget v8, v8, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v2, v7

    .line 136
    aget-boolean v8, v2, v7

    aput-boolean v8, v4, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v6, Lcom/perm/utils/FriendsListsHelper$4;

    invoke-direct {v6, v4}, Lcom/perm/utils/FriendsListsHelper$4;-><init>([Z)V

    .line 145
    invoke-virtual {v0, v1, v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 146
    new-instance v1, Lcom/perm/utils/FriendsListsHelper$5;

    move-object v2, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/perm/utils/FriendsListsHelper$5;-><init>(I[Z[ILcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    const p0, 0x7f0f0398

    .line 157
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/perm/utils/FriendsListsHelper;->checkListsMap(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method private static sortFriendsListBySite()V
    .locals 8

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 237
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 244
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/FriendsList;

    .line 245
    iget v6, v5, Lcom/perm/kate/api/FriendsList;->lid:I

    aget v7, v2, v3

    if-ne v6, v7, :cond_0

    .line 246
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v4, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_2
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    sget-object v1, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 255
    sput-object v0, Lcom/perm/utils/FriendsListsHelper;->friendsList:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x1c
        0x1d
        0x1b
        0x19
        0x1a
    .end array-data
.end method

.method private static updateListsMap(Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 3

    .line 213
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_2
    sget-object p1, Lcom/perm/utils/FriendsListsHelper;->listsMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
