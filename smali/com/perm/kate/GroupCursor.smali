.class public Lcom/perm/kate/GroupCursor;
.super Landroid/database/AbstractCursor;
.source "GroupCursor.java"


# instance fields
.field mColumnNames:[Ljava/lang/String;

.field private mRows:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_medium"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_big"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_closed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members_count"

    aput-object v2, v0, v1

    .line 16
    iput-object v0, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 30
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

    .line 37
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

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
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_0
    iget-object p1, v0, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1

    .line 62
    :cond_2
    iget-object p1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 60
    :cond_3
    iget-object p1, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 74
    :cond_0
    iget-wide v0, v0, Lcom/perm/kate/api/Group;->gid:J

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    .line 101
    :pswitch_0
    iget-object p1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_1
    iget-object p1, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_2
    iget-object p1, v0, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    return-object p1

    .line 95
    :pswitch_3
    iget-object p1, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    return-object p1

    .line 93
    :pswitch_4
    iget-object p1, v0, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    return-object p1

    .line 91
    :pswitch_5
    iget-object p1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    return-object p1

    .line 89
    :pswitch_6
    iget-wide v0, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

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
