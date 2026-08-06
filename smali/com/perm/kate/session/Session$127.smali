.class Lcom/perm/kate/session/Session$127;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$group_id:J

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$sort:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/perm/kate/session/Session$127;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$127;->val$group_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$127;->val$count:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/perm/kate/session/Session$127;->val$offset:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/perm/kate/session/Session$127;->val$sort:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$127;->val$filter:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$127;->val$fields:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/perm/kate/session/Session$127;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$127;->val$group_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$127;->val$count:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$127;->val$offset:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/perm/kate/session/Session$127;->val$sort:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$127;->val$filter:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$127;->val$fields:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$127;->res:Ljava/lang/Object;

    .line 1372
    return-void
.end method
