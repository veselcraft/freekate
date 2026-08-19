.class Lcom/perm/kate/DocsFragment$10;
.super Lcom/perm/kate/photoupload/DocUploadCallback;
.source "DocsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 338
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    check-cast p1, Lcom/perm/kate/api/Document;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J

    .line 339
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    const v0, 0x7f0f057a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p1}, Lcom/perm/kate/DocsFragment;->access$400(Lcom/perm/kate/DocsFragment;)V

    return-void
.end method
