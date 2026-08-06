.class Lcom/perm/kate/PlayerActivity$5;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 233
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 234
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$400(Lcom/perm/kate/PlayerActivity;)V

    .line 235
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-virtual {v0}, Lcom/perm/kate/PlayerActivity;->onChangeShuffleState()V

    .line 236
    invoke-static {}, Lcom/perm/kate/PlaybackService;->changeShuffleState()V

    .line 237
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$5;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->access$600(Lcom/perm/kate/PlayerActivity;Z)V

    .line 239
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
