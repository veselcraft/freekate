.class Lcom/perm/kate/WallMessageActivity$14;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 2
    .param p1, "counts"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, p1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 541
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, p1, Lcom/perm/kate/api/WallMessage;->like_count:I

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 542
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    new-instance v1, Lcom/perm/kate/WallMessageActivity$14$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageActivity$14$1;-><init>(Lcom/perm/kate/WallMessageActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
