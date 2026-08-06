.class Lcom/perm/kate/PhotoViewerActrivity$8;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->selectPhotoSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "p"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1400(Lcom/perm/kate/PhotoViewerActrivity;I)V

    .line 781
    return-void
.end method
