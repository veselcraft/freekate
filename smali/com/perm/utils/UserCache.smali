.class public Lcom/perm/utils/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# instance fields
.field public user_cache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/UserCache;->user_cache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public get(J)Lcom/perm/kate/api/User;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/perm/utils/UserCache;->user_cache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    .line 14
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/perm/utils/UserCache;->user_cache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
