.class public Lcom/perm/kate/GroupCursor;
.super Landroid/database/AbstractCursor;
.source "GroupCursor.java"


# instance fields
.field mColumnNames:[Ljava/lang/String;

.field private mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 16
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

    iput-object v0, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 29
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/GroupCursor;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 58
    .local v0, "v":Lcom/perm/kate/api/Group;
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 60
    :pswitch_0
    iget-object v1, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v1, v0, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/GroupCursor;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 72
    .local v0, "v":Lcom/perm/kate/api/Group;
    packed-switch p1, :pswitch_data_0

    .line 76
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    .line 74
    :pswitch_0
    iget-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/GroupCursor;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 87
    .local v0, "v":Lcom/perm/kate/api/Group;
    packed-switch p1, :pswitch_data_0

    .line 103
    const-string v1, ""

    :goto_0
    return-object v1

    .line 89
    :pswitch_0
    iget-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v1, v0, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v1, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_4
    iget-object v1, v0, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_5
    iget-object v1, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :pswitch_6
    iget-object v1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/perm/kate/GroupCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/GroupCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
