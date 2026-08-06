.class Lcom/perm/kate/WallMessageListAdapter$5;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageListAdapter;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$5;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 2
    .param p1, "counts"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter$5;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {v0}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$5$1;-><init>(Lcom/perm/kate/WallMessageListAdapter$5;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method
