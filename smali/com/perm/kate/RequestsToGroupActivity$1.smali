.class Lcom/perm/kate/RequestsToGroupActivity$1;
.super Ljava/lang/Thread;
.source "RequestsToGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RequestsToGroupActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$1;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$1;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$000(Lcom/perm/kate/RequestsToGroupActivity;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/RequestsToGroupActivity$1;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v3}, Lcom/perm/kate/RequestsToGroupActivity;->access$100(Lcom/perm/kate/RequestsToGroupActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, p0, Lcom/perm/kate/RequestsToGroupActivity$1;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v3}, Lcom/perm/kate/RequestsToGroupActivity;->access$200(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/RequestsToGroupActivity$1;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const-string v3, "photo_100,online"

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
