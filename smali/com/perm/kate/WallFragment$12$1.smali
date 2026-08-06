.class Lcom/perm/kate/WallFragment$12$1;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallFragment$12;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment$12;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/WallFragment$12;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/perm/kate/WallFragment$12$1;->this$1:Lcom/perm/kate/WallFragment$12;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/perm/kate/WallFragment$12$1;->this$1:Lcom/perm/kate/WallFragment$12;

    iget-object v0, v0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 647
    iget-object v0, p0, Lcom/perm/kate/WallFragment$12$1;->this$1:Lcom/perm/kate/WallFragment$12;

    iget-object v0, v0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$900(Lcom/perm/kate/WallFragment;)V

    .line 648
    return-void
.end method
