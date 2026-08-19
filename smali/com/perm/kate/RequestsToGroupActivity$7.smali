.class Lcom/perm/kate/RequestsToGroupActivity$7;
.super Ljava/lang/Thread;
.source "RequestsToGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RequestsToGroupActivity;->loadMore()V
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

    .line 185
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 188
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$000(Lcom/perm/kate/RequestsToGroupActivity;)J

    move-result-wide v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$100(Lcom/perm/kate/RequestsToGroupActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$900(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    const-string v4, "photo_100,online"

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
