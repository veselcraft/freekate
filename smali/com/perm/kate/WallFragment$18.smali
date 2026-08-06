.class Lcom/perm/kate/WallFragment$18;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 858
    iget-object v1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 859
    check-cast v0, Ljava/lang/Integer;

    .line 860
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 861
    iget-object v1, p0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v1}, Lcom/perm/kate/WallFragment;->access$900(Lcom/perm/kate/WallFragment;)V

    .line 862
    :cond_0
    return-void
.end method
