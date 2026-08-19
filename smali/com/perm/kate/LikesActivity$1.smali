.class Lcom/perm/kate/LikesActivity$1;
.super Ljava/lang/Thread;
.source "LikesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LikesActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LikesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$000(Lcom/perm/kate/LikesActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 64
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$000(Lcom/perm/kate/LikesActivity;)J

    move-result-wide v9

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$200(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v12, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/session/Session;->storiesGetViewers(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 67
    :cond_0
    sget-object v13, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$300(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$400(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$500(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$600(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v20

    iget-object v1, v0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    move-object/from16 v21, v1

    invoke-virtual/range {v13 .. v21}, Lcom/perm/kate/session/Session;->getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
