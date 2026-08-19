.class public abstract Lcom/perm/utils/FakeCheck;
.super Ljava/lang/Object;
.source "FakeCheck.java"


# static fields
.field public static fake:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static check(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 8

    const/4 v0, 0x0

    .line 26
    :try_start_0
    sput v0, Lcom/perm/utils/FakeCheck;->fake:I

    .line 29
    new-instance v0, Lcom/perm/utils/FakeCheck$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/FakeCheck$1;-><init>(Landroid/app/Activity;)V

    .line 36
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v2, "city"

    invoke-virtual {v1, p1, v2, v0, p0}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 39
    sget v0, Lcom/perm/utils/FakeCheck;->fake:I

    invoke-static {p1}, Lcom/perm/utils/FakeCheck;->checkRegistrationDate(Ljava/lang/Long;)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/perm/utils/FakeCheck;->fake:I

    .line 42
    new-instance v6, Lcom/perm/utils/FakeCheck$2;

    invoke-direct {v6, p0}, Lcom/perm/utils/FakeCheck$2;-><init>(Landroid/app/Activity;)V

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "counters"

    .line 52
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v3, 0x0

    const-string v5, "nom"

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static checkFriends(Ljava/util/ArrayList;)I
    .locals 7

    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xfa0

    if-le v0, v3, :cond_1

    return v2

    .line 97
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/User;

    .line 100
    iget-object v5, v4, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    iget-object v5, v4, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    iget-object v4, v4, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_3
    new-instance v3, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 105
    new-instance v0, Lcom/perm/utils/FakeCheck$3;

    invoke-direct {v0}, Lcom/perm/utils/FakeCheck$3;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 119
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    int-to-double v0, v4

    .line 121
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpg-double p0, v0, v3

    if-gez p0, :cond_5

    const-string p0, "FakeCheck"

    const-string v0, "friend cities"

    .line 122
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x64

    return p0

    :cond_5
    return v2
.end method

.method public static checkProfile(Ljava/util/ArrayList;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget v1, v1, Lcom/perm/kate/api/User;->friends_count:I

    const/4 v2, 0x6

    const-string v3, "FakeCheck"

    if-ge v1, v2, :cond_1

    const-string v1, "no friends"

    .line 77
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x32

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/User;

    iget p0, p0, Lcom/perm/kate/api/User;->photo_count:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    const-string p0, "no photos"

    .line 81
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x32

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkRegistrationDate(Ljava/lang/Long;)I
    .locals 4

    .line 65
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x21f98280

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-string p0, "FakeCheck"

    const-string v0, "too new"

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x32

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFake()Z
    .locals 2

    .line 60
    sget v0, Lcom/perm/utils/FakeCheck;->fake:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
