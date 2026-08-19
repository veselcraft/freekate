.class Lcom/perm/kate/VideoDetailsActivity$4;
.super Ljava/lang/Thread;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoDetailsActivity;->getGroupInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoDetailsActivity;->access$100(Lcom/perm/kate/VideoDetailsActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoDetailsActivity;->access$400(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity$4;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
