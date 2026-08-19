.class Lcom/perm/kate/VideoFragment$13;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$13;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 542
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$13;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    iget-object p2, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p2}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v0

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 545
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p2

    .line 546
    :goto_0
    new-instance v1, Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/VideoFragment$13;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v2, v2, Lcom/perm/kate/VideoFragment;->videoUploadCallback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v5, "all"

    const-string v6, "all"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
