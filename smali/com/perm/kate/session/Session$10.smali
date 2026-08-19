.class Lcom/perm/kate/session/Session$10;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$chat_id:J

.field final synthetic val$count:I

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$rev:Ljava/lang/Integer;

.field final synthetic val$start_message_id:Ljava/lang/Long;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/perm/kate/session/Session$10;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$10;->val$uid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$10;->val$chat_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$10;->val$offset:Ljava/lang/Long;

    iput p9, p0, Lcom/perm/kate/session/Session$10;->val$count:I

    iput-object p10, p0, Lcom/perm/kate/session/Session$10;->val$start_message_id:Ljava/lang/Long;

    iput-object p11, p0, Lcom/perm/kate/session/Session$10;->val$rev:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 347
    iget-object v0, p0, Lcom/perm/kate/session/Session$10;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$10;->val$uid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$10;->val$chat_id:J

    iget-object v0, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/perm/kate/session/Session$10;->val$offset:Ljava/lang/Long;

    iget v9, p0, Lcom/perm/kate/session/Session$10;->val$count:I

    iget-object v10, p0, Lcom/perm/kate/session/Session$10;->val$start_message_id:Ljava/lang/Long;

    iget-object v11, p0, Lcom/perm/kate/session/Session$10;->val$rev:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->getMessagesHistory(JJJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
