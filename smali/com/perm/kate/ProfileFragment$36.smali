.class Lcom/perm/kate/ProfileFragment$36;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$4100(Lcom/perm/kate/ProfileFragment;Landroid/view/View;)V

    return-void
.end method
