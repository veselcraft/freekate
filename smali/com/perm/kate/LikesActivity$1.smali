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
    .param p1, "this$0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$000(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v2}, Lcom/perm/kate/LikesActivity;->access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v4}, Lcom/perm/kate/LikesActivity;->access$200(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v6}, Lcom/perm/kate/LikesActivity;->access$300(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v7}, Lcom/perm/kate/LikesActivity;->access$400(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/LikesActivity$1;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 48
    return-void
.end method
