.class Lcom/perm/kate/PhotosActivity$7;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
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
    .line 441
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotosActivity;->access$600(Lcom/perm/kate/PhotosActivity;)V

    .line 445
    return-void
.end method
