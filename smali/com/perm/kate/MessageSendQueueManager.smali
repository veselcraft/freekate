.class public Lcom/perm/kate/MessageSendQueueManager;
.super Ljava/lang/Object;
.source "MessageSendQueueManager.java"


# static fields
.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/perm/kate/MessageSendQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageSendQueueManager;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static getQueue(JJ)Lcom/perm/kate/MessageSendQueue;
    .locals 6
    .param p0, "chat_id"    # J
    .param p2, "group_id"    # J

    .prologue
    .line 12
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "account_id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/MessageSendQueueManager;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    sget-object v3, Lcom/perm/kate/MessageSendQueueManager;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MessageSendQueue;

    .line 21
    .local v2, "queue":Lcom/perm/kate/MessageSendQueue;
    :goto_0
    return-object v2

    .line 18
    .end local v2    # "queue":Lcom/perm/kate/MessageSendQueue;
    :cond_0
    new-instance v2, Lcom/perm/kate/MessageSendQueue;

    invoke-static {p2, p3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/perm/kate/MessageSendQueue;-><init>(Lcom/perm/kate/session/Session;)V

    .line 19
    .restart local v2    # "queue":Lcom/perm/kate/MessageSendQueue;
    sget-object v3, Lcom/perm/kate/MessageSendQueueManager;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
