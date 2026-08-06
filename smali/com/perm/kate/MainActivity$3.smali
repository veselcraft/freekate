.class Lcom/perm/kate/MainActivity$3;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity;->checkGroupMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/perm/kate/MainActivity$3;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 217
    sget-object v6, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 219
    .local v5, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/perm/kate/session/Session;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "key":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "arr":[Ljava/lang/String;
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 226
    .local v2, "group_id":J
    new-instance v1, Lcom/perm/kate/MainActivity$3$1;

    invoke-direct {v1, p0, v9, v2, v3}, Lcom/perm/kate/MainActivity$3$1;-><init>(Lcom/perm/kate/MainActivity$3;Landroid/app/Activity;J)V

    .line 235
    .local v1, "callback":Lcom/perm/kate/session/Callback;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/session/Session;

    invoke-virtual {v6, v1, v9}, Lcom/perm/kate/session/Session;->getUnreadDialogsCount(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 237
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "callback":Lcom/perm/kate/session/Callback;
    .end local v2    # "group_id":J
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/perm/kate/session/Session;>;"
    :cond_1
    return-void
.end method
