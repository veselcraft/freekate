.class Lcom/perm/kate/PlayerActivity$6;
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

    .line 259
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 261
    sget-boolean p1, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    sput-boolean p1, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 262
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->access$400(Lcom/perm/kate/PlayerActivity;)V

    .line 263
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PlayerActivity;->onChangeShuffleState()V

    .line 264
    invoke-static {}, Lcom/perm/kate/PlaybackService;->changeShuffleState()V

    .line 265
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 266
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/PlayerActivity;->access$600(Lcom/perm/kate/PlayerActivity;Z)V

    return-void
.end method
