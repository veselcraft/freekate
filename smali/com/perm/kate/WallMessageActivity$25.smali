.class Lcom/perm/kate/WallMessageActivity$25;
.super Ljava/lang/Thread;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->getCommentCanPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$25;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/WallMessageActivity$25;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 948
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity$25;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v4, v4, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity$25;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v4, v4, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$25;->val$_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/WallMessageActivity$25;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 949
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$25;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, v4}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
