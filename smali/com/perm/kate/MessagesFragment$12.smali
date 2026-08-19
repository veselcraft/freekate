.class Lcom/perm/kate/MessagesFragment$12;
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

    .line 528
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$12;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 533
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$12;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v4, v1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->getUsersInMessages(JJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$12;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 541
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
