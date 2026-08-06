.class public Lcom/perm/kate/UserCursor;
.super Landroid/database/AbstractCursor;
.source "UserCursor.java"


# instance fields
.field mColumnNames:[Ljava/lang/String;

.field private mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
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
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 16
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

    iput-object v0, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 27
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 7
    .param p1, "columnIndex"    # I

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 60
    iget-object v1, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v6, p0, Lcom/perm/kate/UserCursor;->mPos:I

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 61
    .local v0, "v":Lcom/perm/kate/api/User;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-wide v2, v4

    .line 69
    :cond_0
    :goto_0
    return-wide v2

    .line 63
    :pswitch_1
    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v2, v4

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v1, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move-wide v2, v4

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 79
    iget-object v1, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/UserCursor;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 80
    .local v0, "v":Lcom/perm/kate/api/User;
    packed-switch p1, :pswitch_data_0

    .line 90
    const-string v1, ""

    :goto_0
    return-object v1

    .line 82
    :pswitch_0
    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/UserCursor;->mRows:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/UserCursor;->mPos:I

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
