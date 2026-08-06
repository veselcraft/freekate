.class Lcom/perm/kate/session/Session$176;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$extended:Ljava/lang/Integer;

.field final synthetic val$offset:I

.field final synthetic val$owner_id:J

.field final synthetic val$owners_only:Ljava/lang/Integer;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/perm/kate/session/Session$176;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$176;->val$owner_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$176;->val$domain:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$176;->val$query:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$176;->val$owners_only:Ljava/lang/Integer;

    iput p9, p0, Lcom/perm/kate/session/Session$176;->val$count:I

    iput p10, p0, Lcom/perm/kate/session/Session$176;->val$offset:I

    iput-object p11, p0, Lcom/perm/kate/session/Session$176;->val$extended:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/perm/kate/session/Session$176;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$176;->val$owner_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$176;->val$domain:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$176;->val$query:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$176;->val$owners_only:Ljava/lang/Integer;

    iget v7, p0, Lcom/perm/kate/session/Session$176;->val$count:I

    iget v8, p0, Lcom/perm/kate/session/Session$176;->val$offset:I

    iget-object v9, p0, Lcom/perm/kate/session/Session$176;->val$extended:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/api/Api;->searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$176;->res:Ljava/lang/Object;

    .line 1814
    return-void
.end method
