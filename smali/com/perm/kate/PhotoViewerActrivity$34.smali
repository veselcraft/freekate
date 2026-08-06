.class Lcom/perm/kate/PhotoViewerActrivity$34;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->confirmDeletePhoto(Lcom/perm/kate/api/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$34;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$3900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    .line 1490
    return-void
.end method
