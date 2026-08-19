.class Lcom/perm/kate/PhotoViewerActrivity$10;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->selectPhotoSize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$is_save:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-boolean p2, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->val$is_save:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 905
    iget-boolean p1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->val$is_save:Z

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1500(Lcom/perm/kate/PhotoViewerActrivity;I)V

    goto :goto_0

    .line 908
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1600(Lcom/perm/kate/PhotoViewerActrivity;I)V

    :goto_0
    return-void
.end method
