.class Lcom/perm/kate/WallFragment$6;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 339
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/WallFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    .line 341
    :cond_0
    return-void
.end method
