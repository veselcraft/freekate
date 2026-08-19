.class Lcom/perm/kate/ProfileLeftFragment$5;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileLeftFragment;->access$200(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/api/User;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment$5;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileLeftFragment;->access$600(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method
