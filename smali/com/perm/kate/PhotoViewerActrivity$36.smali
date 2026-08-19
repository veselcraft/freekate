.class Lcom/perm/kate/PhotoViewerActrivity$36;
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

    .line 1667
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1670
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$36;->val$photo:Lcom/perm/kate/api/Photo;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$4200(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    return-void
.end method
