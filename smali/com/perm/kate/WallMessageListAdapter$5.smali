.class Lcom/perm/kate/WallMessageListAdapter$5;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$5;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$5;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {p1}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$5$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$5$1;-><init>(Lcom/perm/kate/WallMessageListAdapter$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
