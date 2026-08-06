.class Lcom/perm/kate/AudioAlbumsActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 253
    check-cast v0, Ljava/lang/Integer;

    .line 254
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$1200(Lcom/perm/kate/AudioAlbumsActivity;)V

    .line 256
    :cond_0
    return-void
.end method
