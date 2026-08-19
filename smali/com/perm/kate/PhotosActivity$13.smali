.class Lcom/perm/kate/PhotosActivity$13;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->selectPhotoSize()V
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

    .line 687
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 689
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$13;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/PhotosActivity;->access$1100(Lcom/perm/kate/PhotosActivity;I)V

    return-void
.end method
