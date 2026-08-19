.class Lcom/perm/kate/WallMessageActivity$23;
.super Ljava/lang/Thread;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->closeOpenComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$open_comments:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;ZLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$23;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-boolean p2, p0, Lcom/perm/kate/WallMessageActivity$23;->val$open_comments:Z

    iput-object p3, p0, Lcom/perm/kate/WallMessageActivity$23;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 920
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity$23;->val$open_comments:Z

    if-eqz v0, :cond_0

    .line 921
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v7, p0, Lcom/perm/kate/WallMessageActivity$23;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v7, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iget-object v6, p0, Lcom/perm/kate/WallMessageActivity$23;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->wallOpenComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 923
    :cond_0
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v14, p0, Lcom/perm/kate/WallMessageActivity$23;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v9, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    iget-wide v11, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iget-object v13, p0, Lcom/perm/kate/WallMessageActivity$23;->val$_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/session/Session;->wallCloseComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$23;->this$0:Lcom/perm/kate/WallMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
