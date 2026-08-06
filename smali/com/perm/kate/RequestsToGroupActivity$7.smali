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
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 188
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$300(Lcom/perm/kate/RequestsToGroupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "offset":I
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$000(Lcom/perm/kate/RequestsToGroupActivity;)J

    move-result-wide v2

    const-string v4, "photo_100,online"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v6}, Lcom/perm/kate/RequestsToGroupActivity;->access$100(Lcom/perm/kate/RequestsToGroupActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v7}, Lcom/perm/kate/RequestsToGroupActivity;->access$900(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/RequestsToGroupActivity$7;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
