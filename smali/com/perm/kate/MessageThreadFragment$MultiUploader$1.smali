.class Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$MultiUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V
    .locals 0

    .line 2878
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;->this$1:Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2

    .line 2881
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;->this$1:Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;-><init>(Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
