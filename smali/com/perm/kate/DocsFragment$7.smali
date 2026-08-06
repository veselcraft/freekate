.class Lcom/perm/kate/DocsFragment$7;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DocsFragment;->uploadConfirm(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iput-object p2, p0, Lcom/perm/kate/DocsFragment$7;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/perm/kate/DocsFragment$7;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/perm/kate/DocsFragment$7;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 277
    new-instance v1, Lcom/perm/kate/photoupload/DocUploader;

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/DocsFragment$7;->val$file:Ljava/io/File;

    iget-object v4, p0, Lcom/perm/kate/DocsFragment$7;->val$uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/perm/kate/DocsFragment$7;->val$filename:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v0, v0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v8, v0, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    .line 278
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$7;->this$0:Lcom/perm/kate/DocsFragment;

    const v1, 0x7f0704f9

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->displayToast(I)V

    .line 279
    return-void
.end method
