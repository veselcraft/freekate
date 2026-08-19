.class Lcom/perm/kate/WallMessageActivity$10;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 509
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$10;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 512
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$10;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 513
    iget-wide v1, p1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity$10;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, v4, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    iget-boolean v5, p1, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V

    :cond_0
    return-void
.end method
