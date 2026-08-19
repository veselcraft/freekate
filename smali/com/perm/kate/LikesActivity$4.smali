.class Lcom/perm/kate/LikesActivity$4;
.super Ljava/lang/Thread;
.source "LikesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LikesActivity;->loadMore()V
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

    .line 150
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 153
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v1}, Lcom/perm/kate/LikesActivity;->access$300(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v2}, Lcom/perm/kate/LikesActivity;->access$400(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v4}, Lcom/perm/kate/LikesActivity;->access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v6}, Lcom/perm/kate/LikesActivity;->access$500(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v7}, Lcom/perm/kate/LikesActivity;->access$700(Lcom/perm/kate/LikesActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-static {v9}, Lcom/perm/kate/LikesActivity;->access$1100(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/LikesActivity$4;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getLikeUsers(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
