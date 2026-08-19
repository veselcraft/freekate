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

    .line 601
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$14;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v1, :cond_0

    return-void

    .line 606
    :cond_0
    iget v2, p1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    iput v2, v1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 607
    iget p1, p1, Lcom/perm/kate/api/WallMessage;->like_count:I

    iput p1, v1, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 608
    new-instance p1, Lcom/perm/kate/WallMessageActivity$14$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/WallMessageActivity$14$1;-><init>(Lcom/perm/kate/WallMessageActivity$14;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
