.class Lcom/perm/kate/WallMessageActivity$17;
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

    .line 754
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$17;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 757
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$17;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, p1, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 758
    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v2, v0, v1, p1}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    :cond_0
    return v1
.end method
