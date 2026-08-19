.class public abstract Lcom/perm/kate/history/History;
.super Ljava/lang/Object;
.source "History.java"


# static fields
.field private static HISTORY_SIZE:I = 0x64

.field private static mItems:Ljava/util/LinkedHashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static addGroup(Lcom/perm/kate/api/Group;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/perm/kate/history/HistoryItem;

    invoke-direct {v0}, Lcom/perm/kate/history/HistoryItem;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    .line 32
    iget-wide v1, p0, Lcom/perm/kate/api/Group;->gid:J

    iput-wide v1, v0, Lcom/perm/kate/history/HistoryItem;->content_id:J

    .line 33
    iget-object p0, p0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iput-object p0, v0, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    const/4 p0, 0x0

    .line 34
    iput p0, v0, Lcom/perm/kate/history/HistoryItem;->type:I

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/perm/kate/history/History;->put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V

    return-void
.end method

.method public static addUser(Lcom/perm/kate/api/User;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/perm/kate/history/HistoryItem;

    invoke-direct {v0}, Lcom/perm/kate/history/HistoryItem;-><init>()V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/history/HistoryItem;->title:Ljava/lang/String;

    .line 21
    iget-wide v1, p0, Lcom/perm/kate/api/User;->uid:J

    iput-wide v1, v0, Lcom/perm/kate/history/HistoryItem;->content_id:J

    .line 22
    iget-object p0, p0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object p0, v0, Lcom/perm/kate/history/HistoryItem;->image_url:Ljava/lang/String;

    const/16 p0, 0x64

    .line 23
    iput p0, v0, Lcom/perm/kate/history/HistoryItem;->type:I

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/perm/kate/history/History;->put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V

    return-void
.end method

.method public static clearHistory()V
    .locals 1

    .line 61
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public static getHistory()Ljava/util/ArrayList;
    .locals 5

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    .line 67
    sget-object v4, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/history/HistoryItem;

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static put(Ljava/lang/Long;Lcom/perm/kate/history/HistoryItem;)V
    .locals 1

    .line 40
    :try_start_0
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/perm/kate/history/History;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static trim()V
    .locals 2

    .line 51
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sget v1, Lcom/perm/kate/history/History;->HISTORY_SIZE:I

    if-le v0, v1, :cond_1

    .line 52
    sget-object v0, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    sget-object v1, Lcom/perm/kate/history/History;->mItems:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-static {}, Lcom/perm/kate/history/History;->trim()V

    :cond_1
    return-void
.end method
