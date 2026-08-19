.class public Lcom/perm/kate/sync/ContactOperations;
.super Ljava/lang/Object;
.source "ContactOperations.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field public mBackReference:I

.field private final mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

.field private mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private mIsNewContact:Z

.field private mRawContactId:J

.field private final mValues:Landroid/content/ContentValues;

.field private mYield:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p4}, Lcom/perm/kate/sync/ContactOperations;-><init>(Landroid/content/Context;Lcom/perm/kate/sync/BatchOperation;)V

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    .line 102
    iput-wide p2, p0, Lcom/perm/kate/sync/ContactOperations;->mRawContactId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/sync/BatchOperation;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 81
    iput-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    return-void
.end method

.method public static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "caller_is_syncadapter"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private addInsertOp()V
    .locals 4

    .line 281
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    const-string v1, "raw_contact_id"

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    iget-wide v2, p0, Lcom/perm/kate/sync/ContactOperations;->mRawContactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-static {v0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    invoke-static {v0, v2}, Lcom/perm/kate/sync/ContactOperations;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 287
    iget-object v2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 288
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    iget v2, p0, Lcom/perm/kate/sync/ContactOperations;->mBackReference:I

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 293
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    iget-object v1, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    return-void
.end method

.method private addUpdateOp(Landroid/net/Uri;)V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    invoke-static {p1, v0}, Lcom/perm/kate/sync/ContactOperations;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 302
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    return-void
.end method

.method public static newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    .line 308
    invoke-static {p0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 307
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 308
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    .line 314
    invoke-static {p0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 313
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static updateExistingContact(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)Lcom/perm/kate/sync/ContactOperations;
    .locals 1

    .line 74
    new-instance v0, Lcom/perm/kate/sync/ContactOperations;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/sync/ContactOperations;-><init>(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)V

    return-object v0
.end method


# virtual methods
.method public addBirthday(Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    :cond_0
    return-object p0
.end method

.method public addName(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "vnd.android.cursor.item/name"

    const-string v2, "mimetype"

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v3, "data2"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v0, "data3"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    :cond_2
    return-object p0
.end method

.method public addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "data2"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string p2, "mimetype"

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    :cond_0
    return-object p0
.end method

.method public updateBirthday(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 1

    .line 254
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 255
    iget-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 256
    iget-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v0, "data1"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    :cond_0
    return-object p0
.end method

.method public updateName(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 223
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 224
    iget-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v0, "data2"

    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-static {p3, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 227
    iget-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string p3, "data3"

    invoke-virtual {p2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    :cond_2
    return-object p0
.end method

.method public updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;
    .locals 1

    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 247
    iget-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v0, "data1"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p3}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    :cond_0
    return-object p0
.end method
