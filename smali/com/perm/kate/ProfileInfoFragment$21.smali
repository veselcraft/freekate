.class Lcom/perm/kate/ProfileInfoFragment$21;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$21;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$21;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->access$2200(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;)V

    return-void
.end method
