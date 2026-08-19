.class Lcom/perm/kate/MainActivity$4;
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

    .line 249
    iput-object p1, p0, Lcom/perm/kate/MainActivity$4;->this$0:Lcom/perm/kate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 252
    sget-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_"

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 256
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 259
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 261
    new-instance v4, Lcom/perm/kate/MainActivity$4$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v2, v3}, Lcom/perm/kate/MainActivity$4$1;-><init>(Lcom/perm/kate/MainActivity$4;Landroid/app/Activity;J)V

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/session/Session;->getUnreadDialogsCount(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method
