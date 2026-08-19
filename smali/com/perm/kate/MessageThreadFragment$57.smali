.class Lcom/perm/kate/MessageThreadFragment$57;
.super Lcom/perm/utils/MyLocation$LocationResult;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3014
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$57;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/utils/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 1

    .line 3017
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$57;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3020
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$57;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$6700(Lcom/perm/kate/MessageThreadFragment;Landroid/location/Location;)V

    :cond_1
    return-void
.end method
