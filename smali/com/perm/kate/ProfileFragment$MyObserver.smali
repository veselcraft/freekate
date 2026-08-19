.class Lcom/perm/kate/ProfileFragment$MyObserver;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 2031
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$MyObserver;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 2034
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$MyObserver;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$MyObserver;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$MyObserver;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$MyObserver;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v2}, Lcom/perm/kate/ProfileFragment;->access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileFragment;->access$5200(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
