.class Lcom/perm/kate/WallMessageActivity$16;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 661
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v1, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$16;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 666
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
