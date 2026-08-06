.class Lcom/perm/kate/session/Session$7;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getMessages(JZILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$out:Z

.field final synthetic val$time_offset:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JZILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/perm/kate/session/Session$7;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$7;->val$time_offset:J

    iput-boolean p6, p0, Lcom/perm/kate/session/Session$7;->val$out:Z

    iput p7, p0, Lcom/perm/kate/session/Session$7;->val$count:I

    iput-object p8, p0, Lcom/perm/kate/session/Session$7;->val$filters:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$7;->val$offset:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/perm/kate/session/Session$7;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$7;->val$time_offset:J

    iget-boolean v4, p0, Lcom/perm/kate/session/Session$7;->val$out:Z

    iget v5, p0, Lcom/perm/kate/session/Session$7;->val$count:I

    iget-object v6, p0, Lcom/perm/kate/session/Session$7;->val$filters:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$7;->val$offset:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->getMessages(JZILjava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$7;->res:Ljava/lang/Object;

    .line 239
    return-void
.end method
