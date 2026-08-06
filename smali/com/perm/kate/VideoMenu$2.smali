.class Lcom/perm/kate/VideoMenu$2;
.super Ljava/lang/Thread;
.source "VideoMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$video_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$2;->this$0:Lcom/perm/kate/VideoMenu;

    iput-boolean p2, p0, Lcom/perm/kate/VideoMenu$2;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/perm/kate/VideoMenu$2;->val$like:Z

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    const-string v3, "video"

    iget-object v6, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    const-string v2, "video"

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
