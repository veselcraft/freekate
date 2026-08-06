.class Lcom/perm/kate/session/Session$197;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$group_id:J

.field final synthetic val$offset:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/perm/kate/session/Session$197;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$197;->val$group_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$197;->val$fields:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$197;->val$offset:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/perm/kate/session/Session$197;->val$count:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/perm/kate/session/Session$197;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$197;->val$group_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$197;->val$fields:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$197;->val$offset:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/perm/kate/session/Session$197;->val$count:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$197;->res:Ljava/lang/Object;

    .line 2003
    return-void
.end method
