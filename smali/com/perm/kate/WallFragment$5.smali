.class Lcom/perm/kate/WallFragment$5;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/perm/kate/WallFragment$5;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/perm/kate/WallFragment$5;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/WallFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    :cond_0
    return-void
.end method
