.class Lcom/perm/kate/WallFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 926
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 927
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 928
    iget-object p1, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {p1}, Lcom/perm/kate/WallFragment;->access$1000(Lcom/perm/kate/WallFragment;)V

    :cond_0
    return-void
.end method
