.class public Lcom/perm/kate/sync/SyncLogic;
.super Ljava/lang/Object;
.source "SyncLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
    }
.end annotation


# static fields
.field private static PhotoUrlColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 422
    const-string v0, "sync2"

    sput-object v0, Lcom/perm/kate/sync/SyncLogic;->PhotoUrlColumn:Ljava/lang/String;

    return-void
.end method

.method public static accountExists(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 113
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-static {v1, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 114
    .local v0, "a1":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static addMissingFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;Landroid/content/Context;)Z
    .locals 6
    .param p0, "account_name"    # Ljava/lang/String;
    .param p2, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;",
            "Lcom/perm/kate/sync/BatchOperation;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/sync/SyncLogic$RawContactInfo;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    .local p3, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "new_contacts_created":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 242
    .local v0, "friend":Lcom/perm/kate/api/User;
    iget-wide v4, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    invoke-static {p0, p2, v0, p4}, Lcom/perm/kate/sync/SyncLogic;->addRawContact(Ljava/lang/String;Lcom/perm/kate/sync/BatchOperation;Lcom/perm/kate/api/User;Landroid/content/Context;)V

    .line 244
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "friend":Lcom/perm/kate/api/User;
    :cond_1
    return v1
.end method

.method private static addPeriodicSyncCompat(Landroid/accounts/Account;J)V
    .locals 7
    .param p0, "a"    # Landroid/accounts/Account;
    .param p1, "frequency"    # J

    .prologue
    .line 119
    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string v3, "addPeriodicSync"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/accounts/Account;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 121
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.android.contacts"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 133
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static addRawContact(Ljava/lang/String;Lcom/perm/kate/sync/BatchOperation;Lcom/perm/kate/api/User;Landroid/content/Context;)V
    .locals 6
    .param p0, "account_name"    # Ljava/lang/String;
    .param p1, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;
    .param p2, "friend"    # Lcom/perm/kate/api/User;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/perm/kate/sync/BatchOperation;->size()I

    move-result v0

    .line 264
    .local v0, "backReference":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v2, "mValues":Landroid/content/ContentValues;
    const-string v3, "sourceid"

    iget-wide v4, p2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "account_type"

    const-string v4, "com.perm.kate.pro.account"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "account_name"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 269
    .local v1, "cpo":Landroid/content/ContentProviderOperation;
    invoke-virtual {p1, v1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 272
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "mValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .restart local v2    # "mValues":Landroid/content/ContentValues;
    const-string v3, "data1"

    iget-wide v4, p2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v3, "data2"

    const v4, 0x7f070527

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "data3"

    const v4, 0x7f070348

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/vnd.com.perm.kate.profile"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 278
    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    .line 279
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 281
    invoke-virtual {p1, v1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 282
    return-void
.end method

.method private static createFriendSet(Ljava/util/List;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/perm/kate/api/User;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v0, "friendSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 309
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_0
    return-object v0
.end method

.method private static dateToString(Lcom/perm/kate/BirthdayHelper$DateInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "new_birthday"    # Lcom/perm/kate/BirthdayHelper$DateInfo;

    .prologue
    .line 411
    if-nez p0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 413
    :cond_0
    const-string v0, ""

    .line 414
    .local v0, "new_birthday_str":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-%02d-%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/perm/kate/BirthdayHelper$DateInfo;->day:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    goto :goto_0

    .line 417
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static deleteRawContact(Lcom/perm/kate/sync/BatchOperation;Ljava/lang/String;)V
    .locals 5
    .param p0, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;
    .param p1, "raw_id_str"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 288
    invoke-static {v1}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 291
    .local v0, "cpo":Landroid/content/ContentProviderOperation;
    invoke-virtual {p0, v0}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 292
    return-void
.end method

.method public static deleteRawContacts(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 296
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-static {v1, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 297
    .local v0, "a1":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "account_type=\'com.perm.kate.pro.account\' AND account_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteRemovedFriends(Ljava/util/HashSet;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/sync/BatchOperation;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/sync/SyncLogic$RawContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "friendSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p2, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    .local v0, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    iget-object v2, v2, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "raw_id_str":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/perm/kate/sync/SyncLogic;->deleteRawContact(Lcom/perm/kate/sync/BatchOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    .end local v1    # "raw_id_str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static downloadFriends(Ljava/lang/Long;Lcom/perm/kate/SyncActivity$SyncSettings;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "owner_id"    # Ljava/lang/Long;
    .param p1, "syncSettings"    # Lcom/perm/kate/SyncActivity$SyncSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/SyncActivity$SyncSettings;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 209
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v10, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    const-string v2, "first_name,last_name,bdate,photo_100,contacts,photo_200_orig,photo_400_orig"

    .line 213
    .local v2, "fields":Ljava/lang/String;
    iget v0, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 222
    :goto_0
    return-object v10

    .line 216
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 217
    .local v7, "list_id":Ljava/lang/Integer;
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 218
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    move-object v5, p0

    move-object v6, v2

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/api/Api;->getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 220
    .end local v7    # "list_id":Ljava/lang/Integer;
    :cond_1
    invoke-static {v10}, Lcom/perm/kate/sync/SyncLogic;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0
.end method

.method public static ensureAccountExists(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account_name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 48
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 49
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-static {v2, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 50
    .local v1, "a1":Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 52
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v8, "expedited"

    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v8, "force"

    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    const-string v8, "force"

    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string v8, "com.android.contacts"

    invoke-static {v1, v8, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    iget-object p2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 91
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local p2    # "account_name":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 59
    .restart local p2    # "account_name":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v8, "com.perm.kate.pro.account"

    invoke-direct {v0, p2, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, "a":Landroid/accounts/Account;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "123"

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 61
    const-string v8, "user_id"

    invoke-virtual {v2, v0, v8, p0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 64
    .local v4, "cr":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "account_type"

    const-string v9, "com.perm.kate.pro.account"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "account_name"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v8, "ungrouped_visible"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v8, "should_sync"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    const-string v8, "com.android.contacts"

    invoke-static {v0, v8, v11}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 73
    const-wide/32 v6, 0x15180

    .line 76
    .local v6, "frequency":J
    invoke-static {v0, v6, v7}, Lcom/perm/kate/sync/SyncLogic;->addPeriodicSyncCompat(Landroid/accounts/Account;J)V

    .line 78
    const-string v8, "com.android.contacts"

    invoke-static {v0, v8, v11}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 81
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/perm/kate/sync/SyncLogic$1;

    invoke-direct {v9, v0}, Lcom/perm/kate/sync/SyncLogic$1;-><init>(Landroid/accounts/Account;)V

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "account_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/sync/SyncLogic$RawContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 314
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "sourceid"

    aput-object v0, v2, v4

    sget-object v0, Lcom/perm/kate/sync/SyncLogic;->PhotoUrlColumn:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v3, "account_type=\'com.perm.kate.pro.account\' AND account_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v0, p0

    .line 316
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 323
    .local v10, "vkUserId":J
    new-instance v8, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;-><init>(Lcom/perm/kate/sync/SyncLogic$1;)V

    .line 324
    .local v8, "raw":Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    .line 325
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->photo_url:Ljava/lang/String;

    .line 326
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 329
    .end local v8    # "raw":Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
    .end local v10    # "vkUserId":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 329
    :cond_1
    if-eqz v6, :cond_2

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_2
    return-object v7
.end method

.method private static findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6
    .param p0, "am"    # Landroid/accounts/AccountManager;
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v3, "com.perm.kate.pro.account"

    invoke-virtual {p0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 96
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 97
    .local v0, "a":Landroid/accounts/Account;
    const-string v5, "user_id"

    invoke-virtual {p0, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "account_user_id":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v1    # "account_user_id":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 96
    .restart local v0    # "a":Landroid/accounts/Account;
    .restart local v1    # "account_user_id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v1    # "account_user_id":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPhotoSize()I
    .locals 3

    .prologue
    .line 469
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
    .locals 5
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 486
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 488
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 489
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 490
    .local v0, "ch":C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x29

    if-eq v0, v3, :cond_3

    const/16 v3, 0x28

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    .line 488
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    .end local v0    # "ch":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static removeAccount(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 106
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-static {v1, p0}, Lcom/perm/kate/sync/SyncLogic;->findAccount(Landroid/accounts/AccountManager;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 107
    .local v0, "a1":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 109
    :cond_0
    return-void
.end method

.method private static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, "users_new":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v0, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 229
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    return-object v2
.end method

.method private static removeUsersWithoutPhone(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    const/4 v4, 0x0

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    .local v0, "new_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 475
    .local v1, "user":Lcom/perm/kate/api/User;
    iget-object v3, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/sync/SyncLogic;->isRealPhone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    iput-object v4, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    .line 477
    :cond_1
    iget-object v3, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/sync/SyncLogic;->isRealPhone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    iput-object v4, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    .line 479
    :cond_2
    iget-object v3, v1, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 480
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_4
    return-object v0
.end method

.method public static setPhotoSize(I)V
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 465
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_photo_size"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 466
    return-void
.end method

.method public static sync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_name"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 139
    .local v14, "owner_id":Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/SyncActivity;->readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;

    move-result-object v17

    .line 141
    .local v17, "syncSettings":Lcom/perm/kate/SyncActivity$SyncSettings;
    const-string v4, "Kate.SyncLogic"

    const-string v6, "downloading friends"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/perm/kate/sync/SyncLogic;->downloadFriends(Ljava/lang/Long;Lcom/perm/kate/SyncActivity$SyncSettings;)Ljava/util/ArrayList;

    move-result-object v18

    .line 145
    .local v18, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    move-object/from16 v0, v17

    iget v4, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    if-nez v4, :cond_0

    .line 146
    const-string v4, "Kate.SyncLogic"

    const-string v6, "saving friends to database"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v8, v9}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 150
    :cond_0
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    if-eqz v4, :cond_1

    .line 151
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/sync/SyncLogic;->removeUsersWithoutPhone(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    .line 154
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/sync/SyncLogic;->createFriendSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v12

    .line 156
    .local v12, "friendSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v4, "Kate.SyncLogic"

    const-string v6, "syncing with contacts"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 158
    .local v5, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Lcom/perm/kate/sync/BatchOperation;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v5}, Lcom/perm/kate/sync/BatchOperation;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 160
    .local v10, "batchOperation":Lcom/perm/kate/sync/BatchOperation;
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/perm/kate/sync/SyncLogic;->fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 163
    .local v11, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/perm/kate/sync/SyncLogic$RawContactInfo;>;"
    invoke-static {v12, v10, v11}, Lcom/perm/kate/sync/SyncLogic;->deleteRemovedFriends(Ljava/util/HashSet;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;)V

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-static {v0, v1, v10, v11, v2}, Lcom/perm/kate/sync/SyncLogic;->addMissingFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/sync/BatchOperation;Ljava/util/HashMap;Landroid/content/Context;)Z

    move-result v13

    .line 168
    .local v13, "new_contacts_created":Z
    if-eqz v13, :cond_2

    .line 170
    invoke-virtual {v10}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    .line 172
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/perm/kate/sync/SyncLogic;->fetchRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 175
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/User;

    .line 176
    .local v7, "u":Lcom/perm/kate/api/User;
    iget-wide v8, v7, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;

    .line 177
    .local v16, "raw":Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
    if-eqz v16, :cond_3

    .line 179
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/sync/SyncLogic;->updateContact(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/perm/kate/api/User;JLcom/perm/kate/sync/BatchOperation;)V

    .line 181
    invoke-static {}, Lcom/perm/kate/sync/SyncLogic;->getPhotoSize()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 185
    iget-object v15, v7, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 199
    .local v15, "photo":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v15, :cond_3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->photo_url:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 201
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/perm/kate/sync/SyncLogic$RawContactInfo;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-static {v10, v8, v9, v15, v0}, Lcom/perm/kate/sync/SyncLogic;->updateContactPhoto(Lcom/perm/kate/sync/BatchOperation;JLjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 189
    .end local v15    # "photo":Ljava/lang/String;
    :pswitch_0
    iget-object v15, v7, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 190
    .restart local v15    # "photo":Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v15    # "photo":Ljava/lang/String;
    :pswitch_1
    iget-object v15, v7, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 195
    .restart local v15    # "photo":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    iget-object v15, v7, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    goto :goto_1

    .line 203
    .end local v7    # "u":Lcom/perm/kate/api/User;
    .end local v15    # "photo":Ljava/lang/String;
    .end local v16    # "raw":Lcom/perm/kate/sync/SyncLogic$RawContactInfo;
    :cond_5
    invoke-virtual {v10}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    .line 204
    const-string v4, "Kate.SyncLogic"

    const-string v6, "done"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updateContact(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/perm/kate/api/User;JLcom/perm/kate/sync/BatchOperation;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/perm/kate/api/User;
    .param p4, "rawContactId"    # J
    .param p6, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;

    .prologue
    .line 339
    const/4 v11, 0x0

    .line 340
    .local v11, "cellPhone":Ljava/lang/String;
    const/16 v21, 0x0

    .line 341
    .local v21, "otherPhone":Ljava/lang/String;
    const/16 v16, 0x0

    .line 342
    .local v16, "lastName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 344
    .local v13, "firstName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 345
    .local v19, "new_birthday_str":Ljava/lang/String;
    const/16 v20, 0x0

    .line 346
    .local v20, "old_birthday_str":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 347
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v8}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object v18

    .line 348
    .local v18, "new_birthday":Lcom/perm/kate/BirthdayHelper$DateInfo;
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/sync/SyncLogic;->dateToString(Lcom/perm/kate/BirthdayHelper$DateInfo;)Ljava/lang/String;

    move-result-object v19

    .line 351
    .end local v18    # "new_birthday":Lcom/perm/kate/BirthdayHelper$DateInfo;
    :cond_0
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "mimetype"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "data1"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "data2"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string v9, "data3"

    aput-object v9, v6, v8

    const-string v7, "raw_contact_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 356
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v9

    const/4 v9, 0x0

    move-object/from16 v4, p1

    .line 352
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 358
    .local v10, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/sync/ContactOperations;->updateExistingContact(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)Lcom/perm/kate/sync/ContactOperations;

    move-result-object v4

    .local v4, "contactOp":Lcom/perm/kate/sync/ContactOperations;
    move-object v6, v13

    .end local v13    # "firstName":Ljava/lang/String;
    .local v6, "firstName":Ljava/lang/String;
    move-object/from16 v7, v16

    .line 362
    .end local v16    # "lastName":Ljava/lang/String;
    .local v7, "lastName":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 364
    .local v14, "id":J
    const/4 v8, 0x1

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, "mimeType":Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 367
    .local v5, "uri":Landroid/net/Uri;
    const-string v8, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 368
    const/4 v8, 0x4

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 369
    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/sync/ContactOperations;->updateName(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v14    # "id":J
    .end local v17    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v8

    .line 371
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v14    # "id":J
    .restart local v17    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 372
    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 373
    .local v12, "event_type":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 374
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 375
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v5, v0, v1}, Lcom/perm/kate/sync/ContactOperations;->updateBirthday(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    goto :goto_0

    .line 377
    .end local v12    # "event_type":Ljava/lang/String;
    :cond_3
    const-string v8, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 378
    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 379
    .local v22, "type":I
    const/4 v8, 0x2

    move/from16 v0, v22

    if-ne v0, v8, :cond_4

    .line 380
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 381
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v4, v11, v8, v5}, Lcom/perm/kate/sync/ContactOperations;->updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;

    goto/16 :goto_0

    .line 382
    :cond_4
    const/4 v8, 0x1

    move/from16 v0, v22

    if-ne v0, v8, :cond_1

    .line 383
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 384
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v8, v5}, Lcom/perm/kate/sync/ContactOperations;->updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 389
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v14    # "id":J
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v22    # "type":I
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 393
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 394
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/sync/ContactOperations;->addName(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    .line 397
    :cond_6
    if-nez v11, :cond_7

    .line 398
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/sync/ContactOperations;->addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;

    .line 402
    :cond_7
    if-nez v21, :cond_8

    .line 403
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/sync/ContactOperations;->addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;

    .line 406
    :cond_8
    if-nez v20, :cond_9

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 407
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/perm/kate/sync/ContactOperations;->addBirthday(Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;

    .line 408
    :cond_9
    return-void
.end method

.method private static updateContactPhoto(Lcom/perm/kate/sync/BatchOperation;JLjava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;
    .param p1, "rawContactId"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 426
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 427
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 432
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 433
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/perm/kate/ImageLoader;->getImageBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    .local v2, "image":[B
    const-string v3, "Kate.SyncLogic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    array-length v3, v2

    if-lez v3, :cond_0

    .line 436
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 437
    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 438
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 441
    const-string v3, "data15"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 444
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 446
    sget-object v3, Lcom/perm/kate/sync/SyncLogic;->PhotoUrlColumn:Ljava/lang/String;

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 447
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 451
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v2    # "image":[B
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
