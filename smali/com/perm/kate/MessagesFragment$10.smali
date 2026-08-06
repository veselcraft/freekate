.class Lcom/perm/kate/MessagesFragment$10;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->getMissingUsersInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 418
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v4, v3, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-object v3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v6, v3, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->getUsersInMessages(JJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 419
    .local v1, "user_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 422
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v2}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v1    # "user_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
