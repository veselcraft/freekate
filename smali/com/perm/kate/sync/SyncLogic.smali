.class public abstract Lcom/perm/kate/sync/SyncLogic;
.super Ljava/lang/Object;
.source "SyncLogic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static PhotoUrlColumn:Ljava/lang/String; = "sync2"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static accountExists(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    .line 112
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    .line 113
    invoke-static {p1, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static addMissingFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;Landroid/content/Context;)Z
    .locals 4

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 233
    iget-wide v2, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {p0, p2, v1, p4}, Lcom/perm/kate/sync/SyncLogic;->addRawContact(Ljava/lang/String;Lcom/perm/kate/sync/BatchOperation;Lcom/perm/kate/api/User;Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static addPeriodicSyncCompat(Landroid/accounts/Account;J)V
    .locals 2

    :try_start_0
    const-string v0, "com.android.contacts"

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1, p1, p2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static addRawContact(Ljava/lang/String;Lcom/perm/kate/sync/BatchOperation;Lcom/perm/kate/api/User;Landroid/content/Context;)V
    .locals 4

    .line 253
    invoke-virtual {p1}, Lcom/perm/kate/sync/BatchOperation;->size()I

    move-result v0

    .line 255
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 256
    iget-wide v2, p2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_type"

    const-string v3, "cc.veselcraft.freekate.account"

    .line 257
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_name"

    .line 258
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object p0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 260
    invoke-virtual {p1, p0}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 263
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    iget-wide v1, p2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "data1"

    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const p2, 0x7f0f004c

    .line 265
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0f025c

    .line 266
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "data3"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mimetype"

    const-string p3, "vnd.android.cursor.item/vnd.cc.veselcraft.freekate.profile"

    .line 267
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object p2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 269
    invoke-virtual {p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string p2, "raw_contact_id"

    .line 270
    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .line 272
    invoke-virtual {p1, p0}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    return-void
.end method

.method private static createFriendSet(Ljava/util/List;)Ljava/util/HashSet;
    .locals 3

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 299
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 300
    iget-wide v1, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static dateToString(Lcom/perm/kate/BirthdayHelper$DateInfo;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    .line 406
    iget-object v1, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget p0, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "-%02d-%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deleteRawContact(Lcom/perm/kate/sync/BatchOperation;Ljava/lang/String;)V
    .locals 3

    .line 278
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 279
    invoke-static {v0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id = ?"

    .line 280
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    return-void
.end method

.method public static deleteRawContacts(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 286
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 287
    invoke-static {v0, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p0, v1, v2

    const-string p0, "account_type=\'com.perm.kate.account\' AND account_name=?"

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static deleteRemovedFriends(Ljava/util/HashSet;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;)V
    .locals 2

    .line 244
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    iget-object v0, v0, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p1, v0}, Lcom/perm/kate/sync/SyncLogic;->deleteRawContact(Lcom/perm/kate/sync/BatchOperation;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static downloadFriends(Ljava/lang/Long;Lcom/perm/kate/SyncActivity$SyncSettings;)Ljava/util/ArrayList;
    .locals 9

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget v1, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    const-string v8, "first_name,last_name,bdate,photo_100,contacts,photo_200_orig,photo_400_orig"

    if-nez v1, :cond_0

    .line 205
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_1

    .line 207
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    const-wide/16 v1, 0x12c

    .line 208
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/sync/SyncLogic;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static ensureAccountExists(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 48
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 49
    invoke-static {v0, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.android.contacts"

    const/4 v3, 0x1

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_0

    .line 52
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "expedited"

    .line 53
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "force"

    .line 54
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-static {v1, v2, p0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    iget-object p0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    .line 59
    :cond_0
    new-instance v1, Landroid/accounts/Account;

    const-string v5, "cc.veselcraft.freekate.account"

    invoke-direct {v1, p2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "123"

    invoke-virtual {v6, v1, v8, v7}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    const-string v6, "user_id"

    .line 61
    invoke-virtual {v0, v1, v6, p0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 64
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "account_type"

    .line 65
    invoke-virtual {p1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_name"

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ungrouped_visible"

    .line 67
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "should_sync"

    .line 68
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-wide/32 p0, 0x15180

    .line 76
    invoke-static {v1, p0, p1}, Lcom/perm/kate/sync/SyncLogic;->addPeriodicSyncCompat(Landroid/accounts/Account;J)V

    .line 78
    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 81
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/perm/kate/sync/SyncLogic$1;

    invoke-direct {p1, v1}, Lcom/perm/kate/sync/SyncLogic$1;-><init>(Landroid/accounts/Account;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p2
.end method

.method private static fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v7, 0x0

    aput-object v1, v3, v7

    const-string v1, "sourceid"

    const/4 v8, 0x1

    aput-object v1, v3, v8

    sget-object v1, Lcom/perm/kate/sync/SyncLogic;->PhotoUrlColumn:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v1, v3, v9

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v7

    const-string v4, "account_type=\'com.perm.kate.account\' AND account_name=?"

    const/4 v6, 0x0

    move-object v1, p0

    .line 307
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 312
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 314
    new-instance p1, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;-><init>(Lcom/perm/kate/sync/SyncLogic$1;)V

    .line 315
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p1, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    .line 316
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->photo_url:Ljava/lang/String;

    .line 317
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    const-string v0, "cc.veselcraft.freekate.account"

    .line 95
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 96
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "user_id"

    .line 97
    invoke-virtual {p0, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhotoSize()I
    .locals 3

    .line 461
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_photo_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRealPhone(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 480
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static removeAccount(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    .line 106
    invoke-static {p1, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p0, v0, v0}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    return-void
.end method

.method private static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 219
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 220
    iget-wide v3, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static removeUsersWithoutPhone(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 467
    iget-object v2, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/sync/SyncLogic;->isRealPhone(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 468
    iput-object v3, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    .line 469
    :cond_1
    iget-object v2, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/sync/SyncLogic;->isRealPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 470
    iput-object v3, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    .line 471
    :cond_2
    iget-object v2, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 472
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static setPhotoSize(I)V
    .locals 2

    .line 457
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_photo_size"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static sync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 128
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 130
    invoke-static {p0}, Lcom/perm/kate/SyncActivity;->readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;

    move-result-object v0

    const-string v1, "Kate.SyncLogic"

    const-string v2, "downloading friends"

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p2, v0}, Lcom/perm/kate/sync/SyncLogic;->downloadFriends(Ljava/lang/Long;Lcom/perm/kate/SyncActivity$SyncSettings;)Ljava/util/ArrayList;

    move-result-object v2

    .line 136
    iget v3, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-nez v3, :cond_0

    const-string v3, "saving friends to database"

    .line 137
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 141
    :cond_0
    iget-boolean p2, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    if-eqz p2, :cond_1

    .line 142
    invoke-static {v2}, Lcom/perm/kate/sync/SyncLogic;->removeUsersWithoutPhone(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/sync/SyncLogic;->createFriendSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p2

    const-string v0, "syncing with contacts"

    .line 147
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    new-instance v10, Lcom/perm/kate/sync/BatchOperation;

    invoke-direct {v10, p0, v0}, Lcom/perm/kate/sync/BatchOperation;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 151
    invoke-static {v0, p1}, Lcom/perm/kate/sync/SyncLogic;->fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 154
    invoke-static {p2, v10, v3}, Lcom/perm/kate/sync/SyncLogic;->deleteRemovedFriends(Ljava/util/HashSet;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;)V

    .line 157
    invoke-static {p1, v2, v10, v3, p0}, Lcom/perm/kate/sync/SyncLogic;->addMissingFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 161
    invoke-virtual {v10}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    .line 163
    invoke-static {v0, p1}, Lcom/perm/kate/sync/SyncLogic;->fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    :cond_2
    move-object p2, v3

    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/perm/kate/api/User;

    .line 167
    iget-wide v3, v11, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    if-nez v12, :cond_4

    goto :goto_0

    .line 170
    :cond_4
    iget-object v3, v12, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, v11

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lcom/perm/kate/sync/SyncLogic;->updateContact(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/perm/kate/api/User;JLcom/perm/kate/sync/BatchOperation;)V

    .line 172
    invoke-static {}, Lcom/perm/kate/sync/SyncLogic;->getPhotoSize()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    .line 176
    iget-object v3, v11, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_1

    .line 185
    :cond_5
    iget-object v3, v11, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    iget-object v3, v11, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    goto :goto_1

    .line 180
    :cond_6
    iget-object v3, v11, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    :cond_7
    :goto_1
    if-eqz v3, :cond_3

    .line 190
    iget-object v4, v12, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->photo_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    iget-object v4, v12, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v10, v4, v5, v3, p0}, Lcom/perm/kate/sync/SyncLogic;->updateContactPhoto(Lcom/perm/kate/sync/BatchOperation;JLjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 194
    :cond_8
    invoke-virtual {v10}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    const-string p0, "done"

    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateContact(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/perm/kate/api/User;JLcom/perm/kate/sync/BatchOperation;)V
    .locals 21

    move-object/from16 v0, p3

    .line 337
    iget-object v1, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 338
    iget-object v1, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lcom/perm/kate/sync/SyncLogic;->dateToString(Lcom/perm/kate/BirthdayHelper$DateInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 342
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const-string v3, "mimetype"

    const/4 v10, 0x1

    aput-object v3, v5, v10

    const-string v3, "data1"

    const/4 v11, 0x2

    aput-object v3, v5, v11

    const-string v3, "data2"

    const/4 v12, 0x3

    aput-object v3, v5, v12

    const-string v3, "data3"

    const/4 v13, 0x4

    aput-object v3, v5, v13

    new-array v7, v10, [Ljava/lang/String;

    .line 347
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x0

    const-string v6, "raw_contact_id=?"

    move-object/from16 v3, p1

    .line 343
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v4, p0

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    .line 349
    invoke-static {v4, v5, v6, v7}, Lcom/perm/kate/sync/ContactOperations;->updateExistingContact(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)Lcom/perm/kate/sync/ContactOperations;

    move-result-object v4

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 353
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 354
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 355
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 356
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const-string v10, "vnd.android.cursor.item/name"

    .line 358
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 359
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 361
    iget-object v9, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    iget-object v10, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    move-object v14, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Lcom/perm/kate/sync/ContactOperations;->updateName(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    move-object/from16 v20, v5

    move-object v5, v2

    move-object/from16 v2, v20

    goto :goto_2

    :cond_1
    const-string v10, "vnd.android.cursor.item/contact_event"

    .line 362
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 363
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 365
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 366
    invoke-virtual {v4, v15, v8, v1}, Lcom/perm/kate/sync/ContactOperations;->updateBirthday(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    goto :goto_2

    :cond_2
    const-string v10, "vnd.android.cursor.item/phone_v2"

    .line 368
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 369
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 371
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    iget-object v9, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v4, v6, v9, v15}, Lcom/perm/kate/sync/ContactOperations;->updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 374
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 375
    iget-object v9, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-virtual {v4, v7, v9, v15}, Lcom/perm/kate/sync/ContactOperations;->updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_1

    .line 380
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    .line 385
    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/perm/kate/sync/ContactOperations;->addName(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    :cond_6
    if-nez v6, :cond_7

    .line 389
    iget-object v2, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v4, v2, v11}, Lcom/perm/kate/sync/ContactOperations;->addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;

    :cond_7
    if-nez v7, :cond_8

    .line 394
    iget-object v0, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v2}, Lcom/perm/kate/sync/ContactOperations;->addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;

    :cond_8
    if-nez v8, :cond_9

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 398
    invoke-virtual {v4, v1}, Lcom/perm/kate/sync/ContactOperations;->addBirthday(Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 380
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 381
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static updateContactPhoto(Lcom/perm/kate/sync/BatchOperation;JLjava/lang/String;Landroid/content/Context;)V
    .locals 7

    .line 418
    sget-object p4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 421
    invoke-virtual {p4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    if-eqz p3, :cond_0

    .line 424
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_0

    .line 425
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/perm/kate/ImageLoader;->getImageBytes(Ljava/lang/String;)[B

    move-result-object p4

    const-string v0, "Kate.SyncLogic"

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photo size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    array-length v0, p4

    if-lez v0, :cond_0

    .line 428
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "raw_contact_id"

    .line 429
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data15"

    .line 433
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 436
    sget-object p4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 438
    sget-object p1, Lcom/perm/kate/sync/SyncLogic;->PhotoUrlColumn:Ljava/lang/String;

    invoke-virtual {p4, p1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 439
    invoke-virtual {p4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 443
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 447
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
