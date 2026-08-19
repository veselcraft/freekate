.class Lcom/perm/kate/ProfileFragment$4;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$4;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileFragment;->access$1500(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method
