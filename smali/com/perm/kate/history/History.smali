.class public Lcom/perm/kate/history/History;
.super Ljava/lang/Object;
.source "History.java"


# static fields
.field private static HISTORY_SIZE:I

.field private static mItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/history/HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x64

    sput v0, Lcom/perm/kate/history/History;->HISTORY_SIZE:I

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static addGroup(Lcom/perm/kate/api/Group;)V
    .locals 6
    .param p0, "group"    # Lcom/perm/kate/api/Group;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/perm/kate/history/HistoryItem;

    invoke-direct {v0}, Lcom/perm/kate/history/HistoryItem;-><init>()V

    .line 31
    .local v0, "item":Lcom/perm/kate/history/HistoryItem;
    iget-object v1, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    .line 32
    iget-wide v2, p0, Lcom/perm/kate/api/Group;->gid:J

    iput-wide v2, v0, Lcom/perm/kate/history/HistoryItem;->content_id:J

    .line 33
    iget-object v1, p0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    iput v1, v0, Lcom/perm/kate/history/HistoryItem;->type:I

    .line 35
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/perm/kate/api/Group;->gid:J

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perm/kate/history/History;->put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V

    goto :goto_0
.end method

.method public static addUser(Lcom/perm/kate/api/User;)V
    .locals 4
    .param p0, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/perm/kate/history/HistoryItem;

    invoke-direct {v0}, Lcom/perm/kate/history/HistoryItem;-><init>()V

    .line 20
    .local v0, "item":Lcom/perm/kate/history/HistoryItem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    .line 21
    iget-wide v2, p0, Lcom/perm/kate/api/User;->uid:J

    iput-wide v2, v0, Lcom/perm/kate/history/HistoryItem;->content_id:J

    .line 22
    iget-object v1, p0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    .line 23
    const/16 v1, 0x64

    iput v1, v0, Lcom/perm/kate/history/HistoryItem;->type:I

    .line 24
    iget-wide v2, p0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perm/kate/history/History;->put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V

    goto :goto_0
.end method

.method public static clearHistory()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 62
    return-void
.end method

.method public static getHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/history/HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/history/HistoryItem;>;"
    sget-object v2, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 67
    .local v1, "key":Ljava/lang/Long;
    const/4 v3, 0x0

    sget-object v4, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 68
    .end local v1    # "key":Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method private static put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Long;
    .param p1, "item"    # Lcom/perm/kate/history/HistoryItem;

    .prologue
    .line 40
    :try_start_0
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :cond_0
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/perm/kate/history/History;->trim()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static trim()V
    .locals 3

    .prologue
    .line 51
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sget v2, Lcom/perm/kate/history/History;->HISTORY_SIZE:I

    if-le v1, v2, :cond_1

    .line 52
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    .local v0, "key":Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-static {}, Lcom/perm/kate/history/History;->trim()V

    .line 58
    :cond_1
    return-void
.end method
