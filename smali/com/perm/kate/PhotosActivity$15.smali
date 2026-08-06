.class Lcom/perm/kate/PhotosActivity$15;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->confirmDownloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$15;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$15;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$1300(Lcom/perm/kate/PhotosActivity;)V

    .line 695
    return-void
.end method
