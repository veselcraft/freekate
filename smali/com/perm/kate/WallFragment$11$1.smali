.class Lcom/perm/kate/WallFragment$11$1;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallFragment$11;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment$11;Landroid/app/Activity;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/perm/kate/WallFragment$11$1;->this$1:Lcom/perm/kate/WallFragment$11;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/perm/kate/WallFragment$11$1;->this$1:Lcom/perm/kate/WallFragment$11;

    iget-object v0, v0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 679
    iget-object p1, p0, Lcom/perm/kate/WallFragment$11$1;->this$1:Lcom/perm/kate/WallFragment$11;

    iget-object p1, p1, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {p1}, Lcom/perm/kate/WallFragment;->access$1000(Lcom/perm/kate/WallFragment;)V

    return-void
.end method
