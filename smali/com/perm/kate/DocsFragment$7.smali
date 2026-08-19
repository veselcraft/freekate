.class Lcom/perm/kate/DocsFragment$7;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iput-object p2, p0, Lcom/perm/kate/DocsFragment$7;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/perm/kate/DocsFragment$7;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/perm/kate/DocsFragment$7;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 298
    new-instance p1, Lcom/perm/kate/photoupload/DocUploader;

    iget-object p2, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DocsFragment$7;->val$file:Ljava/io/File;

    iget-object v3, p0, Lcom/perm/kate/DocsFragment$7;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/perm/kate/DocsFragment$7;->val$filename:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object p2, p2, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object p2, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v7, p2, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    .line 299
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    const p2, 0x7f0f057e

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method
