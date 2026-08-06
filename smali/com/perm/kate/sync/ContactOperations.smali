.class public Lcom/perm/kate/sync/ContactOperations;
.super Ljava/lang/Object;
.source "ContactOperations.java"


# instance fields
.field public mBackReference:I

.field private final mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

.field private mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private final mContext:Landroid/content/Context;

.field private mIsNewContact:Z

.field private mRawContactId:J

.field private final mValues:Landroid/content/ContentValues;

.field private mYield:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactId"    # J
    .param p4, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;

    .prologue
    .line 99
    invoke-direct {p0, p1, p4}, Lcom/perm/kate/sync/ContactOperations;-><init>(Landroid/content/Context;Lcom/perm/kate/sync/BatchOperation;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    .line 101
    iput-wide p2, p0, Lcom/perm/kate/sync/ContactOperations;->mRawContactId:J

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/sync/BatchOperation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 79
    iput-object p1, p0, Lcom/perm/kate/sync/ContactOperations;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    .line 81
    return-void
.end method

.method public static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method private addInsertOp()V
    .locals 4

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    iget-wide v2, p0, Lcom/perm/kate/sync/ContactOperations;->mRawContactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 284
    invoke-static {v0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    invoke-static {v0, v1}, Lcom/perm/kate/sync/ContactOperations;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 286
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    iget-object v1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 287
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mIsNewContact:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "raw_contact_id"

    iget v2, p0, Lcom/perm/kate/sync/ContactOperations;->mBackReference:I

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 291
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 292
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    iget-object v1, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 293
    return-void
.end method

.method private addUpdateOp(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    invoke-static {p1, v0}, Lcom/perm/kate/sync/ContactOperations;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/sync/ContactOperations;->mYield:Z

    .line 301
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mBatchOperation:Lcom/perm/kate/sync/BatchOperation;

    iget-object v1, p0, Lcom/perm/kate/sync/ContactOperations;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/sync/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 302
    return-void
.end method

.method public static newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "yield"    # Z

    .prologue
    .line 306
    .line 307
    invoke-static {p0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public static newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "yield"    # Z

    .prologue
    .line 312
    .line 313
    invoke-static {p0}, Lcom/perm/kate/sync/ContactOperations;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 312
    return-object v0
.end method

.method public static updateExistingContact(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)Lcom/perm/kate/sync/ContactOperations;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J
    .param p3, "batchOperation"    # Lcom/perm/kate/sync/BatchOperation;

    .prologue
    .line 73
    new-instance v0, Lcom/perm/kate/sync/ContactOperations;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/sync/ContactOperations;-><init>(Landroid/content/Context;JLcom/perm/kate/sync/BatchOperation;)V

    return-object v0
.end method


# virtual methods
.method public addBirthday(Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 3
    .param p1, "new_birthday"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    .line 172
    :cond_0
    return-object p0
.end method

.method public addName(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 3
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    .line 126
    :cond_2
    return-object p0
.end method

.method public addPhone(Ljava/lang/String;I)Lcom/perm/kate/sync/ContactOperations;
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/sync/ContactOperations;->addInsertOp()V

    .line 161
    :cond_0
    return-object p0
.end method

.method public updateBirthday(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "existing_birthday"    # Ljava/lang/String;
    .param p3, "new_birthday"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 255
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    .line 258
    :cond_0
    return-object p0
.end method

.method public updateName(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/sync/ContactOperations;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "existingFirstName"    # Ljava/lang/String;
    .param p3, "existingLastName"    # Ljava/lang/String;
    .param p4, "firstName"    # Ljava/lang/String;
    .param p5, "lastName"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 222
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-static {p3, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 229
    invoke-direct {p0, p1}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    .line 231
    :cond_2
    return-object p0
.end method

.method public updatePhone(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/perm/kate/sync/ContactOperations;
    .locals 2
    .param p1, "existingNumber"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 246
    iget-object v0, p0, Lcom/perm/kate/sync/ContactOperations;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p3}, Lcom/perm/kate/sync/ContactOperations;->addUpdateOp(Landroid/net/Uri;)V

    .line 249
    :cond_0
    return-object p0
.end method
