.class Lcom/perm/kate/DocsFragment$10;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/DocUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DocsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/perm/kate/api/Document;

    .prologue
    .line 317
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createDoc(Lcom/perm/kate/api/Document;)J

    .line 318
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    const v2, 0x7f0704f5

    invoke-virtual {v1, v2}, Lcom/perm/kate/DocsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/DocsFragment;->displayToast(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$10;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$200(Lcom/perm/kate/DocsFragment;)V

    .line 320
    return-void
.end method
