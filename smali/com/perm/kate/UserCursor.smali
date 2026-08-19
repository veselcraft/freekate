.class public Lcom/perm/kate/UserCursor;
.super Landroid/database/AbstractCursor;
.source "UserCursor.java"


# instance fields
.field mColumnNames:[Ljava/lang/String;

.field private mRows:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_medium_rec"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "online"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "online_mobile"

    aput-object v2, v0, v1

    .line 16
    iput-object v0, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 28
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return-wide v4

    .line 67
    :cond_0
    iget-object p1, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    return-wide v2

    .line 65
    :cond_2
    iget-object p1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v2, v4

    :goto_1
    return-wide v2

    .line 63
    :cond_4
    iget-wide v0, v0, Lcom/perm/kate/api/User;->uid:J

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 88
    :cond_0
    iget-object p1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    return-object p1

    .line 86
    :cond_1
    iget-object p1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    return-object p1

    .line 84
    :cond_2
    iget-object p1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    return-object p1

    .line 82
    :cond_3
    iget-wide v0, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
