.class Lcom/perm/kate/session/Session$200;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$owner_id:J

.field final synthetic val$reason:I

.field final synthetic val$search_query:Ljava/lang/String;

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lcom/perm/kate/session/Session$200;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$200;->val$video_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$200;->val$owner_id:J

    iput p8, p0, Lcom/perm/kate/session/Session$200;->val$reason:I

    iput-object p9, p0, Lcom/perm/kate/session/Session$200;->val$comment:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$200;->val$search_query:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2136
    iget-object v0, p0, Lcom/perm/kate/session/Session$200;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$200;->val$video_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$200;->val$owner_id:J

    iget v6, p0, Lcom/perm/kate/session/Session$200;->val$reason:I

    iget-object v7, p0, Lcom/perm/kate/session/Session$200;->val$comment:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$200;->val$search_query:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->reportVideo(JJILjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
